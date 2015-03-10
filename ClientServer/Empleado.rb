require_relative   'Validaciones'

class Empleado

  attr_accessor :codigo
  attr_accessor :nombre
  attr_accessor :correo
  attr_accessor :sueldo
  attr_accessor :identidad
  attr_accessor :telefono

  def initialize codigo, nombre, correo,sueldo, identidad, telefono
    @codigo = codigo
    @nombre = nombre
    @correo = correo
    @sueldo = sueldo
    @identidad = identidad
    @telefono = telefono
  end

  def self.get_next_codigo
    return (('A'..'Z').to_a.sample( 2 ).join+  ('0'..'9').to_a.sample( 2 ).join)
  end

  def to_s
    return codigo+' '+nombre+' '+correo+' '+sueldo+' '+identidad+' '+telefono
  end

end
