import os,sys

def RewriteSvg(infile,outfile):
	ident=''
	with open(infile,'rb') as fi:
		with open(outfile,'wb') as fo:
			try:
				while True:
					line = fi.readline();
					if "ID:" in line:
						ident = line
					else:
						ident=''
					fo.write(ident)
			except:
				print "Unexpected error:", sys.exc_info()
				return

if __name__ == '__main__':
	RewriteSvg('muscle_lists.txt','muscle_lists2.txt')