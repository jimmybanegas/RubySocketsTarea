require_relative 'Cliente'

class Validaciones

  def self.correo_es_valido correo
    repetido = Cliente.iniciarCliente 'Repetido'+"\n"+correo.to_s

    if correo.to_s.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
      return true
    else
      print '\nCorreo no valido\n'
      return false
    end
  end

  def self.identidad_es_valida identidad
    repetido = Cliente.iniciarCliente 'Repetido'+"\n"+identidad.to_s

    if identidad.to_s.match(/(\d{13})/)
      return true
    else
      print '\nIdentidad no valido\n'
      return false
    end
  end

  def self.telefono_es_valido telefono
    repetido = Cliente.iniciarCliente 'Repetido'+"\n"+telefono.to_s
    if telefono.to_s.match(/(\d{8})/)
      return true
    else
      print '\nTelefono no valido\n'
      return false
    end
  end

  def self.salario_es_valido salario
    if salario.to_s.match(/[+-]?\d+(\.\d+)?/)
     return true
   else
     print '\nSalario no valido\n'
     return false
   end
  end

  def self.codigo_es_valido codigo
    repetido = Cliente.iniciarCliente 'Repetido'+"\n"+codigo.to_s
    if codigo.to_s.match(/^[A-Z]{2}[0-9]{2}$/)
      return true
    else
      print '\nCodigo no valido\n'
      return false
    end
  end

  def self.nombre_es_valido nombre
   if nombre.to_s.match(/^[A-Za-záéíóúñ]{2,}([\s][A-Za-záéíóúñ]{2,})+$/)
     return true
   else
     print '\nNombre no valido\n'
     return false
   end
  end

end