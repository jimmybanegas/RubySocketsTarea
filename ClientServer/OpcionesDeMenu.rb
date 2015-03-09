require_relative 'Empleado'
require_relative 'Validaciones'

class OpcionesDeMenu
  def self.agregar
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
          emp=Empleado.new(Empleado.get_next_codigo,nombre,correo,salario,identidad,telefono)
      return emp
    else
      return nil
    end
  end

  def self.buscar codigo
    if(codigo=='A')
      return "Hola A"
    else
      return "Nada"
    end
  end

  def listar

  end

  def self.modificar codigo

  end

end