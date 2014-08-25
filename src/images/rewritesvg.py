import os,sys

def RewriteSvg(infile,outfile):
	ident=''
	with open(infile,'rb') as fi:
		with open(outfile,'wb') as fo:
			try:
				while True:
					line = fi.readline();
					print line
					if "<path d=\"" in line:
						lines = line.split()
						if len(lines) > 5:
							id=lines[1]
							ids=id.split("\"")
							if len(ids) == 2:
								print "found " +ids[1]
								ident = ids[1]
					else:
						ident=''
					if ident != '':
						new_line="<path id=\""+ident+"\" d=\""
						line = line.replace("<path d=\"",new_line)
						print line
					fo.write(line)
			except:
				print "Unexpected error:", sys.exc_info()
				return

if __name__ == '__main__':
	RewriteSvg('muscles.svg','muscles2.svg')