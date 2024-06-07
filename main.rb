def rbin(question)

  print "#{question}: "
  input = gets.chomp

  begin
    array = input.split(" ").map do |num|
      Integer(num)
    end
    return array
  rescue ArgumentError => e
    puts "Erro: #{e.message}"
    puts "IMPORTANTE: Digite apenas numeros inteiros"
    return nil
  end

end

in_array = rbin("Digite quantos numeros quiser")

if in_array != nil
  out_array = in_array.map do |num|
    num ** 3
  end
  print out_array
end
