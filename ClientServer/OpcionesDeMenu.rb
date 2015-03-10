require_relative 'Empleado'
require_relative 'Validaciones'

class OpcionesDeMenu
  def self.agregar codigo
    print "\nIngrese nombre: "
    nombre = gets.chomp

    print "Ingrese correo: "
    correo = gets.chomp

    print "Ingrese salario: "
    salario = gets.chomp

    print "Ingrese identidad: "
    identidad = gets.chomp

    print "Ingrese teléfono: "
    telefono = gets.chomp

    if Validaciones.correo_es_valido(correo) && Validaciones.identidad_es_valida(identidad)&&
        Validaciones.nombre_es_valido(nombre) && Validaciones.salario_es_valido(salario) && Validaciones.telefono_es_valido(telefono)
          emp=Empleado.new(codigo,nombre,correo,salario,identidad,telefono)
      return emp
    else
      return nil
    end
  end

end