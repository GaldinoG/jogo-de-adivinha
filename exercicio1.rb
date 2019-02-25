def jogoAdivinha(nome)
  number = 7

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

end

def jogarNovamente(nome)
  puts("\n\n" + nome + "você deseja jogar novamente? 1-Sim 2-Não")
  strBack = gets.chomp.to_i

  if strBack == 1
    system("clear")
    jogoAdivinha(nome)
  elsif strBack == 2
    abort("Fim do jogo")  
  else
    puts("\n\nValor invalido")
    jogarNovamente(nome)
  end 

  if strBack == 1
    jogarNovamente(nome)
  end
end


puts("Digite seu nome: ")
nome = gets
jogoAdivinha(nome)
jogarNovamente(nome)

