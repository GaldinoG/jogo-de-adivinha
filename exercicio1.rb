number = 7

puts("Digite seu nome: ")
nome = gets

i = 1
while i <= 3
  puts("\nDigite o valor " + nome)
  chute = gets.chomp.to_i
  if chute == number
    abort("Acertou!!")
  else
    if chute > number
      puts "O numero secreto é menor \n\n"
    else
      puts "O numero secreto é maior \n\n"
    end
  end 
  i += 1
end

abort("Fim do jogo")

