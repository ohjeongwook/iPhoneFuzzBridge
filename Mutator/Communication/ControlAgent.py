from socket import *
import FuzzyAgent_pb2
import struct

class iPhonePlayer:
	DebugLevel = 0
	sequence = 0
	def __init__( self, host, port ):
		#Connect to remote host
		addr = ( host, port )
		
		self.sock = socket( AF_INET, SOCK_STREAM )
		if self.DebugLevel > 0:
			print 'Connecting', host, port
		self.sock.connect( addr )

	def __del__( self ):
		self.sock.close()

	def SetDebugLevel( self, DebugLevel ):
		self.DebugLevel = DebugLevel

	def PlayFile( self, filename ):
		if self.sock:
			control = FuzzyAgent_pb2.Control()
			control.opcode = 1
			control.type = 2
			control.sequence = self.sequence
			fd = open( filename )
			control.data = fd.read()
			fd.close()
			data = control.SerializeToString()
	
			#Send the data
			length_header = struct.pack("I", len(data) )
			if self.DebugLevel > 0:
				print "Sending ", len( length_header ) , self.sequence
			self.sock.send( length_header )
			if self.DebugLevel > 0:
				print "Sending data", len(data)
			self.sock.send( data )
			if self.DebugLevel > 0:
				print "Waiting Response", self.sequence
			response_length_buffer = self.sock.recv( 4 )
			response_length = struct.unpack("I", response_length_buffer )[0]
			if self.DebugLevel > 0:
				print "Received data ", response_length
			response_data = self.sock.recv( response_length )
			#TODO: parse the response
			self.sequence+=1

if __name__ == "__main__":
	import sys

	if len( sys.argv ) < 4: 
		print "Usage: " + sys.argv[0] + "<iPhone IP> <Port> <Audio filename>"
		sys.exit( 1 )

	iphone_player = iPhonePlayer( sys.argv[1], int(sys.argv[2] ) )
	iphone_player.SetDebugLevel( 10 ) 
	for filename in sys.argv[3:]:
		iphone_player.PlayFile( filename )

