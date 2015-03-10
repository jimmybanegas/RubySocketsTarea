require_relative 'OpcionesDeMenu'
require_relative 'Empleado'
require_relative 'Archivos'
require_relative 'Cliente'

class Menu

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
        emp = OpcionesDeMenu.agregar Empleado.get_next_codigo
        if emp!= nil
          puts Cliente.iniciarCliente 'Agregar'+"\n"+emp.to_s
        end
      when 2
        print "Ingrese codigo del empleado a modificar: "
        codigo = gets.chomp

        antiguo = Cliente.iniciarCliente 'Buscar'+"\n"+codigo.to_s
        puts antiguo

        if !antiguo.to_s.include? 'No se encontro'
          nuevo = OpcionesDeMenu.agregar antiguo[0..3].to_s
          if nuevo!= nil
            puts nuevo
            puts Cliente.iniciarCliente 'Modificar'+"\n"+antiguo.to_s+"\n"+nuevo.to_s
          end
        end

      when 3
        print "Ingrese codigo del empleado que busca: "
        codigo = gets.chomp
        puts Cliente.iniciarCliente 'Buscar'+"\n"+codigo.to_s
      when 4
        puts Cliente.iniciarCliente 'Listar'
      when 5
        break
    end

  end

end