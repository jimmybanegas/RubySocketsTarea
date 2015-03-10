class Archivos
  def self.escribir empleado
    aFile = File.new("Empleados.txt", "a+")
    if aFile
      aFile.syswrite(empleado+"\n")
      return 'Agregado'
    else
      return 'No se agregó'
    end
  end

  def self.buscar codigo
    line_num=0
    text=File.open('Empleados.txt').read
    text.gsub!(/\r\n?/, "\n")
    text.each_line do |line|
      if line[0..3].to_s == codigo
       return line.to_s
      end
    end
    return 'No se encontro'
  end

  def self.editar anterior,nuevo
    File.write("Empleados.txt",File.open("Empleados.txt",&:read).gsub(anterior,nuevo))
    return 'Hecho'
  end

  def self.listar
    text=File.open('Empleados.txt').read
    return text
  end

  def self.es_repetido parametro
    line_num=0
    text=File.open('Empleados.txt').read
    text.gsub!(/\r\n?/, "\n")
    text.each_line do |line|
      if line.to_s.include? parametro
        return true
      end
    end
    return false
  end

end