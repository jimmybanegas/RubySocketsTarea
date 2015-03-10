require_relative 'Archivos'

class Servidor

  def self.iniciarServidor
    require 'socket'
    a = TCPServer.new('', 3333)
    loop {
      connection = a.accept
      text = connection.recv(1024)

      array_values = text.split("\n")

      if array_values[0] == 'Agregar'
        connection.write Archivos.escribir(array_values[1])
      elsif array_values[0] == 'Modificar'
        connection.write Archivos.editar(array_values[1],array_values[3])
      elsif array_values[0] == 'Buscar'
        connection.write Archivos.buscar(array_values[1])
      elsif array_values[0] == 'Listar'
        connection.write Archivos.listar
      elsif array_values[0] == 'Repetido'
        connection.write Archivos.es_repetido(array_values[1])
      end
    }
  end

  iniciarServidor

end