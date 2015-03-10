class Cliente

  def self.iniciarCliente mensaje
    require 'socket'
    a = TCPSocket.new('127.0.0.1', 3333)
    a.write mensaje

    return  a.recv(1024).to_s

  end

end