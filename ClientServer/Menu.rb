require_relative   'OpcionesDeMenu'
require_relative   'Empleado'


class Menu
  op = OpcionesDeMenu.new
  emp = Empleado.new

  while true
    print "\n1. Agregar\n"+
           "2. Modificar\n"+
           "3. Buscar\n"+
           "4. Lista\n"+
           "5. Salir\n"
    print "Ingrese una opcion: "
    opcion = Integer(gets.chomp)


    case opcion
      when 1
        puts emp.get_next_codigo
        emp =op.agregar
        puts emp
      when 2
        print "Ingrese codigo del empleado: "
        codigo = gets.chomp

        op.modificar(codigo)
      when 3
        print "Ingrese codigo del empleado: "
        codigo = gets.chomp

        resp = op.buscar(codigo)
        puts resp
      when 4
        op.listar
        break
      when 5
        break
    end

  end

end