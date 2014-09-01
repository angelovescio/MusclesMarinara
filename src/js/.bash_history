ifconfig
sudo dhclient eth0
ifconfig
sudo dhclient eth0
ifconfig
sudo dhclient eth0
ifconfig
sudo dhclient eth0
killall -9 dhclient
sudo killall -9 dhclient
sudo dhclient eth0
ifconfig
sudo nano /etc/network/interfaces 
sudo reboot
sudo apt-get install mongodb
netstat -antup
sudo nano /etc/mongodb.conf 
sudo service mongodb restart
netstat -antup
mongo
netstat -antup
sudo nano /etc/init.d/mongodb 
sudo nano /etc/mongodb.conf 
sudo service mongodb restart
clear
sudo nano /etc/mongodb.conf 
sudo service mongodb restart
$ easy_install pymongo
sudo apt-get install python-setuptools 
git clone https://github.com/10gen-labs/sleepy.mongoose.git
sudo apt-get install git
git clone https://github.com/10gen-labs/sleepy.mongoose.git
sudo apt-get install pymongo
easy_install pymongo
sudo easy_install pymongo
cd sleepy.mongoose/
ls
python httpd.py 
nano httpd.py 
python httpd.py 
mongo
mongo --db muscles
mongo muscles
ifconfig
sudo apt-get install scons
sudo apt-get remove mongodb
sudo apt-get remove mongodb-*
scons mongo all --ssl
wget https://fastdl.mongodb.org/src/mongodb-src-r2.6.4.tar.gz
wget https://fastdl.mongodb.org/src/mongodb-src-r2.6.4.tar.gz --no-check-certificate
wget --no-check-certificate https://fastdl.mongodb.org/src/mongodb-src-r2.6.4.tar.gz
tar -zxvf mongodb-src-r2.6.4.tar.gz 
cd mongodb-src-r2.6.4/
ls
scons mongo all --ssl
sudo apt-get install g++
scons mongo all --ssl
sudo apt-get install openssl
sudo apt-get install libssl-dev 
scons mongo all --ssl
ls
./mongod --help
ls
clear
cd /etc/ssl/
openssl req -newkey rsa:2048 -new -x509 -days 365 -nodes -out mongodb-cert.crt -keyout mongodb-cert.key
sudo openssl req -newkey rsa:2048 -new -x509 -days 365 -nodes -out mongodb-cert.crt -keyout mongodb-cert.key
sudo cat mongodb-cert.key mongodb-cert.crt > mongodb.pem
sudo cat mongodb-cert.key mongodb-cert.crt 
sudo cat mongodb-cert.key mongodb-cert.crt
sudo cat mongodb-cert.key mongodb-cert.crt > /home/vesh/mongodb.pem
cp /home/vesh/mongodb.pem .
sudo cp /home/vesh/mongodb.pem .
sudo nano /etc/mongodb.conf 
clear
ls /home/vesh/
ls /home/vesh/mongodb-src-r2.6.4
export PATH=$PATH:/home/vesh/mongodb-src-r2.6.4
locate mongod
mongod --help
mongod --rest -sslMode requireSSL
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem 
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /var/lib/mongodb/
sudo mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /var/lib/mongodb/
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /var/lib/mongodb/
sudo rm /var/lib/mongodb/mongod.lock 
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /var/lib/mongodb/
sudo chown -R mongodb:mongodb /var/lib/mongodb/
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /var/lib/mongodb/
sudo chmod -R 777 /var/lib/mongodb/
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /var/lib/mongodb/
df
du /home/vesh/
du -h /home/vesh/
du -h /home/vesh/ | grep G
sudo bash
fdisk -l
fdisk /dev/sdb 
mkfs.ext4 /dev/sdb1 
mkdir /mnt/sdb1
moutn /dev/sdb1 /mnt/sdb1/
mount /dev/sdb1 /mnt/sdb1/
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /mnt/sdb1/
export PATH=$PATH:/home/vesh/mongodb-src-r2.6.4
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /mnt/sdb1/
mongod --rest -sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem --dbpath /mnt/sdb1/ --jsonp
mongoimport
export PATH=$PATH:/home/vesh/mongodb-src-r2.6.4
mongoimport
mongoimport --help
mongoimport --host 192.168.2.8 --db muscles --collection musclegroups --jsonArray muscle_lists2.txt --ssl
openssl x509 -in vesh.pem -inform PEM -subject -nameopt RFC2253
mongo
export PATH=$PATH:/home/vesh/mongodb-src-r2.6.4
mongo
mongo -ssl
mongo --host 192.168.2.8 -ssl
mongo --host 192.168.2.8/muscles -ssl
exit
cat /etc/ssl/server.pem > /etc/ssl/combined.pem
exit
cat /etc/ssl/server.pem >> /etc/ssl/combined.pem
exit
sudo bash
export PATH=$PATH:/home/vesh/mongodb-src-r2.6.4
mongo
mongo --ssl

mongo --ssl
mongo -ssl -sslPEMKeyFile vesh.pem 
mongo -ssl
mongo -ssl -sslPEMKeyFile vesh.pem 
mongo -ssl
mongo -ssl -sslPEMKeyFile vesh.pem 
sudo bashopenssl x509 -in vesh.pem -inform PEM -subject -nameopt RFC2253
openssl x509 -in vesh.pem -inform PEM -subject -nameopt RFC2253
mongoimport --host 192.168.2.8 --db muscles --collection musclegroups --jsonArray muscle_lists2.txt --ssl
nano client.cnf
openssl genrsa -out client.key 2048
openssl req -key client.key -new -out client.req
openssl x509 -req -days 365 -in client.req -signkey client.key -out client.crt -extfile client.cnf -extensions ssl_client
openssl x509 -text -noout -in client.crt
openssl x509 -in client.crt -out client.der -outform DER
openssl x509 -in client.der -inform DER -out client.pem -outform PEM
openssl x509 -in client.pem -inform PEM -subject -nameopt RFC2253
mongo -ssl -sslPEMKeyFile client.pem 
cat client.pem 
mongo -ssl -sslPEMKeyFile client.pem 
openssl x509 -inform RSA -in client.crt -out client2.pem -TEXT
openssl x509 -inform RSA -in client.crt -out client2.pem -text
openssl x509 -in client.crt -out client2.pem -text
mongo -ssl -sslPEMKeyFile client2.pem 
mongo --ssl --sslPEMKeyFile client2.pem 
mongo --ssl --sslPEMKeyFile client.pem 
mongo --ssl --sslPEMKeyFile vesh.pem 
openssl x509 -in vesh.pem -inform PEM -subject -nameopt RFC2253
mongo --ssl --sslPEMKeyFile vesh.pem 
history | grep vesh
openssl x509 -text -noout -in client.crt
mongo --ssl --sslPEMKeyFile vesh.pem 
ls /etc/ssl/
ls
cat mongodb.pem 
openssl pkcs12 -export -in me-cert.pem -inkey private/name-key.pem -certfile cacert.pem -name "[friendly name]" -out name-cert.p12
openssl req -new -nodes -out vesh-req.pem -keyout vesh-key.pem -days 365
openssl req -new -nodes -out vesh-req.pem -keyout vesh-key.pem -days 365  -extfile client.cnf -extensions ssl_client
openssl req -new -nodes -out vesh-req.pem -keyout vesh-key.pem -days 365  -extfile client.cnf
openssl req -new -nodes -out vesh-req.pem -keyout vesh-key.pem -days 365 -extfile client.cnf
openssl req -new -nodes -out vesh-req.pem -keyout vesh-key.pem -days 365
openssl ca -out vesh-cert.pem -days 365 -infiles vesh-req.pem
openssl ca -out vesh-cert.pem -days 365 -infiles vesh-req.pem -certfile mongodb.pem 
openssl ca -out vesh-cert.pem -days 365 -infiles vesh-req.pem -certfi
openssl genrsa -des3 -out client.key 1024
openssl genrsa -out client.key 1024
openssl req -key client.key -new -out client.req
openssl x509 -req -in client.req -CA mongodb.pem -out client.pem 
openssl req -out ca.pem -new -x509 
openssl genrsa -out server.key 1024 
openssl req -key server.key -new -out server.req
openssl x509 -req -in server.req -CA CA.pem -CAkey privkey.pem -CAserial file.srl -out server.pem 
openssl x509 -req -in server.req -CA ca.pem -CAkey privkey.pem -CAserial file.srl -out server.pem 
echo 00 > file.srl
openssl x509 -req -in server.req -CA ca.pem -CAkey privkey.pem -CAserial file.srl -out server.pem 
ord []:
An optional compaord []:
openssl genrsa -out client.key 1024 
openssl req -key client.key -new -out client.req
openssl x509 -req -in client.req -CA ca.pem -CAkey privkey.pem -CAserial file.srl -out client.pem
ls
ls -la
sudo cp ca.pem /etc/ssl/
sudo cp privkey.pem /etc/ssl/
sudo cp server.pem /etc/ssl/
cat server.pem 
cat ca.pem 
cat privkey.pem 
sudo cp server.key /etc/ssl/
nano /etc/mongodb.conf 
mongo --ssl --sslPEMKeyFile vesh.pem 
mongo --ssl --sslPEMKeyFile client.pem 
cat client.pem 
cat client.key 
cp client.key client_combined.pem
cat client.pem >> client_combined.pem
mongo --ssl --sslPEMKeyFile client_combined.pem 
openssl x509 -in client_combined.pem -inform PEM -subject -nameopt RFC2253
openssl req -key client.key -new -out client.req
openssl x509 -req -in client.req -CA ca.pem -CAkey privkey.pem -CAserial file.srl -out client.pem
cp client.key client_combined.pem
cat client.pem >> client_combined.pem
openssl x509 -in client_combined.pem -inform PEM -subject -nameopt RFC2253
mongo --ssl --sslPEMKeyFile client_combined.pem 
sudo nano /etc/mongodb.conf 
mongo --ssl --sslPEMKeyFile client_combined.pem 
openssl x509 -in client_combined.pem -inform PEM -subject -nameopt RFC2253
mongo --ssl --sslPEMKeyFile client_combined.pem -sslCAFile ca.pem 
mongo --ssl --sslPEMKeyFile client_combined.pem
openssl x509 -in vesh.pem -inform PEM -subject -nameopt RFC2253
mongo --ssl --sslPEMKeyFile vesh.pem 
opemssl pkcs12 -export -in client.crt -inkey client.key -out client_combined.pem
openssl pkcs12 -export -in client.crt -inkey client.key -out client_combined.pem
openssl pkcs12 -export -in client.pem -inkey client.key -out client_combined.pem
cat client_combined.pem 
clear
exit
file client_combined.pem 
openssl pkcs12 -export -in client.pem -inkey client.key -out client_combined.pem -nodes
file client_combined.pem 
file client.pem 
cat client.pem 
cat client.key 
cat client.crt 
ls -la
ls -tr
ls -trl
cat client_combined.pem 
clear
bash
exit
