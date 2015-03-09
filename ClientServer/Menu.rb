require_relative 'OpcionesDeMenu'
require_relative 'Empleado'
require_relative 'Archivos'

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
        emp = OpcionesDeMenu.agregar
        if emp== nil
          print 'NULO'
        else
          Archivos.escribir(emp.to_s)
        end
      when 2
        print "Ingrese codigo del empleado: "
       # codigo = gets.chomp
        #OpcionesDeMenu.modificar(codigo)
        Archivos.editar('HL54 Jimmy Ramos jimmy@gmail.com 6500.30 1806199800495 95621230','HL54 Josue Banegas jimmy@gmail.com 6500.30 1806199800495 95621230')
      when 3
        print "Ingrese codigo del empleado: "
        codigo = gets.chomp

        Archivos.buscar codigo
       # resp = OpcionesDeMenu.buscar(codigo)
       # puts resp
      when 4
        Archivos.listar
      when 5
        break
    end

  end

end