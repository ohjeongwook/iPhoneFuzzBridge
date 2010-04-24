import socket

def StartApplication( HOST, PORT, AppId ):
	s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	s.connect((HOST, PORT))
	s.send( AppId + ( 256-len(AppId) ) *"\x00" )
	#data = s.recv(1024)
	s.close()
	#print 'Received', repr(data)

if __name__ == '__main__':	
    StartApplication( 'iphone', 30000, 'com.yourcompany.FuzzyAgent' )
