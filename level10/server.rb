require 'socket'
server = TCPServer.open(6969)

loop {
	client_connection = server.accept
	puts "connetcted to the client"
	while (message = client_connection.gets)
		puts message
	end
	client_connection.close
	puts "connection is closed"
}

