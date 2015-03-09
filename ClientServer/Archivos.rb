class Archivos
  def self.escribir empleado
    aFile = File.new("Empleados.txt", "a+")
    if aFile
      aFile.syswrite(empleado+"\n")
    else
      puts "Unable to open file!"
    end
  end

  def self.buscar codigo
    line_num=0
    text=File.open('Empleados.txt').read
    text.gsub!(/\r\n?/, "\n")
    text.each_line do |line|
      if line.to_s.include? codigo
        print "#{line_num += 1} #{line}"
      end
    end
  end

  def self.editar anterior,nuevo
    File.write("Empleados.txt",File.open("Empleados.txt",&:read).gsub(anterior,nuevo))
  end

  def self.listar
    line_num=0
    text=File.open('Empleados.txt').read
    text.gsub!(/\r\n?/, "\n")
    text.each_line do |line|
      print "#{line_num += 1} #{line}"
    end
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