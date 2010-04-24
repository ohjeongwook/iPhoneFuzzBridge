#!/bin/sh
#-h http://10.0.2.1/ iphone 1234 ../Samples/test.xls /tmp/out/test.xls
import sys
sys.path.append(r'../Communication')
import random
import struct
import getopt

import Player

optlist, args = getopt.getopt(sys.argv[1:], 'h:')
file_prefix = ''
for (option,value) in optlist:
    if option == '-h':
        file_prefix = value

hostname = args[0]
port = int( args[1] )
orig_filename = args[2]
out_filename = args[3]

fd = open( orig_filename , "rb" ) 
data = fd.read()
fd.close()

while 1:
    index = random.randint( 0, len(data)-4 )
    value = random.randint( 0, 0xffffffff )
    print 'Index',hex(index),'Value',hex(value)
    out_data = data[0:index] + struct.pack("I", value ) + data[index+4:]
    print len(data),len(out_data)

    fw = open( out_filename , "w" )
    fw.write( out_data )
    fw.close()
	
    Player.PlayFilesOnHost( hostname, port, [out_filename], file_prefix )

