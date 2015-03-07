class Hello
  puts 'Hello'

  print "¿Cuál es tu nombre?"
  nombre = gets.chomp
  nombre.capitalize!

  print "¿Cuál es tu apellido?"
  apellido = gets.chomp
  apellido.capitalize!

  print "¿De qué ciudad eres?"
  ciudad = gets.chomp
  ciudad.capitalize!

  print "¿De qué estado o provincia eres?"
  estado = gets.chomp
  estado.upcase!

  puts "¡Tu nombre es #{nombre} #{apellido} y vienes de #{ciudad}, #{estado}!"
end


print "¡Ztring, por favor!: "
datos_usuario = gets.chomp
datos_usuario.downcase!

if datos_usuario.include? "s"
  #Reemplazar
  datos_usuario.gsub!(/s/, "z")
else
  puts "¡No hay nada que hacer aquí!"
end

puts "Tu string es: #{datos_usuario}"