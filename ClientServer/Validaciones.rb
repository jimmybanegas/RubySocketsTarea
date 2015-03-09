class Validaciones

  def self.correo_es_valido? correo
    correo = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  end

  def self.identidad_es_valida? identidad
    telefono=/(\d{13})/
  end

  def self.telefono_es_valido? telefono
    telefono=/(\d{8})/
  end

  def self.salario_es_valido? salario
   salario= /[+-]?\d+(\.\d+)?/
  end

  def self.codigo_es_valido? codigo
    codigo= /^[A-Z]{2}[0-9]{2}$/
  end

  def self.nombre_es_valido? nombre
    nombre = /[a-zA-Z]+/
  end


end