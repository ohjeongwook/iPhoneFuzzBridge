import sys
import getopt
import ControlAgent
import shutil
import md5

def PlayFilesOnHost( hostname, port, files, file_prefix ):
	iphone_player = ControlAgent.iPhonePlayer( hostname, port )
	iphone_player.SetDebugLevel( 10 )
	
	for file in files:
	    print ">",file_prefix+file
	    try:
	        iphone_player.PlayFile( file_prefix+file )
	    except:
	        fd = open( file, "rb" )
	        data = fd.read()
	        fd.close()
	
	        m = md5.new()
	        m.update( data )
	        dst_file = m.hexdigest() + file[-4:]
	        print file,'->',dst_file 

	        shutil.copyfile( file, dst_file )
	        iphone_player = ControlAgent.iPhonePlayer( hostname, port )

if __name__ == '__main__':    
	optlist, args = getopt.getopt(sys.argv[1:], 'h:')
	file_prefix = ''
	for (option,value) in optlist:
	    if option == '-h':
	        file_prefix = value
	
	hostname = args[0]
	port = int( args[1] )
	PlayFilesOnHost( hostname, port, args[2:], file_prefix )

