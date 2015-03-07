class Servidor
  require 'socket'
  a = TCPServer.new('', 3333) # '' means to bind to "all interfaces", same as nil or '0.0.0.0'
  loop {
    connection = a.accept
    puts "received:" + connection.recv(1024)
    connection.puts Time.now.ctime
    connection.write 'got something--closing now--here is your response message from the server'

  }
end