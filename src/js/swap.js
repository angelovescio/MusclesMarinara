/**
 * Created by vesh on 8/20/2014.
 */
/*
 * Replace all SVG images with inline SVG
 */
HashMap = function(){
    this._dict = {};
}
HashMap.prototype._shared = {id: 1};
HashMap.prototype.put = function put(key, value){
    if(typeof key == "object"){
        if(!key.hasOwnProperty._id){
            key.hasOwnProperty = function(key){
                return Object.prototype.hasOwnProperty.call(this, key);
            }
            key.hasOwnProperty._id = this._shared.id++;
        }
        this._dict[key.hasOwnProperty._id] = value;
    }else{
        this._dict[key] = value;
    }
    return this; // for chaining
}
HashMap.prototype.get = function get(key){
    if(typeof key == "object"){
        return this._dict[key.hasOwnProperty._id];
    }
    return this._dict[key];
}

var map = new HashMap();

jQuery(document).ready(function() {
    /*
     * Replace all SVG images with inline SVG
     */
    jQuery('img.svg').each(function(){
        var $img = jQuery(this);
        var imgID = $img.attr('id');
        var imgClass = $img.attr('class');
        var imgURL = $img.attr('src');

        jQuery.get(imgURL, function(data) {
            // Get the SVG tag, ignore the rest
            var $svg = jQuery(data).find('svg');

            // Add replaced image's ID to the new SVG
            if(typeof imgID !== 'undefined') {
                $svg = $svg.attr('id', imgID);
            }
            // Add replaced image's classes to the new SVG
            if(typeof imgClass !== 'undefined') {
                $svg = $svg.attr('class', imgClass+' replaced-svg');
            }

            // Remove any invalid XML tags as per http://validator.w3.org
            $svg = $svg.removeAttr('xmlns:a');
            //add the onclick listener
            $svg = $svg.click(notify);
            // Replace image with new SVG
            $img.replaceWith($svg);
        });

    });
});
function notify(evt)
{
    var url = evt.target.getAttribute('id');
    var item = map.get(url);
    console.log(item);
    if(item == null || item == 'black')
    {
        $("#"+url).css("fill","red");
        map.put(url,'red');
    }
    else
    {
        $("#"+url).css("fill","black");
        map.put(url,"black");
    }
    calldb(url);
}
function calldb(region){
    $.ajax({
        url: 'http://192.168.2.8:28017/muscles/musclegroups/?filter_path='+region,
        type: 'get',
        dataType: 'jsonp',
        jsonp: 'jsonp', // mongod is expecting the parameter name to be called "jsonp"
        success: function (data) {
            console.log('success', data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log('error', errorThrown);
        }
    });
}