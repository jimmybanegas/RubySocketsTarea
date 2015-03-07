class Empleado

=begin
  def initialize codigo, nombre, correo,sueldo, identidad, telefono
    @codigo = codigo
    @nombre = nombre
    @correo = correo
    @sueldo = sueldo
    @identidad = identidad
    @telefono = telefono
  end
=end

  def get_next_codigo
    return (('A'..'Z').to_a.sample( 2 ).join+  ('0'..'9').to_a.sample( 2 ).join)
  end

end
