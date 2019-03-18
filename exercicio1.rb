def jogoAdivinha(nome, listArray)
  
  puts("\nEscolha seu nivel de dificuldade: 1 - 2 - 3 - 4 - 5")
  strNivel = gets.chomp.to_i
  
  case strNivel
  when 1
    number = rand(0..30)
  when 2
    number = rand(0..60)
  when 3
    number = rand(0..100)
  when 4
	number = rand(0..150)
  when 5
    number = rand(0..200)
  end

  i = 1
  while i <= 3
    puts("\nDigite o valor " + nome)
    chute = gets.chomp.to_i
	listArray.push(chute)
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

end

def jogarNovamente(nome, listArray)
  puts("\n\n" + nome + "você deseja jogar novamente? 1-Sim 2-Não")
  strBack = gets.chomp.to_i
  
  if strBack == 1
    system("clear")
    puts("\nNumeros que ja foram chutados:" + listArray.inspect)

    jogoAdivinha(nome, listArray)
  elsif strBack == 2
    abort("Fim do jogo")  
  else
    puts("\n\nValor invalido")
    jogarNovamente(nome, listArray)
  end 

  if strBack == 1
    jogarNovamente(nome, listArray)
  end
end

listArray = Array.new
puts("Digite seu nome: ")
nome = gets
jogoAdivinha(nome, listArray)
jogarNovamente(nome, listArray)

