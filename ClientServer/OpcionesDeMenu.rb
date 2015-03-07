class OpcionesDeMenu
  def agregar
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

    return nombre+correo

  end

  def buscar codigo
    if(codigo=='A')
      return "Hola A"
    else
      return "Nada"
    end
  end

  def listar

  end

  def modificar codigo

  end

end