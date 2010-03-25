import sys
import getopt
import ControlAgent

optlist, args = getopt.getopt(sys.argv[1:], 'h:')
file_prefix = ''
for (option,value) in optlist:
    if option == '-h':
        file_prefix = value

try:
    iphone_player = ControlAgent.iPhonePlayer( args[0], int( args[1] ) )
    iphone_player.SetDebugLevel( 10 )
    for file in args[2:]:
        print ">",file_prefix+file
        iphone_player.PlayFile( file_prefix+file )
except:
    s = raw_input('We got something, captain!')
