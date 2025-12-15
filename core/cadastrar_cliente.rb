def cadastrar_cliente(clientes)
  mensagem("Iniciando cadastro de cliente ...", true, true, 1.5)

  mensagem_azul("Digite o nome do cliente:", false, false)
  nome = gets.chomp
  limpar_tela

  mensagem_azul("Digite o CPF do cliente:", false, false)
  cpf = gets.chomp
  limpar_tela

  mensagem_azul("Digite o telefone do cliente:", false, false)
  telefone = gets.chomp
  limpar_tela

  clientes << {
    id: Time.now.to_i,
    nome: nome,
    cpf: cpf,
    telefone: telefone
  }

  mensagem_verde("Cliente #{amarelo(nome)} cadastrado com sucesso!", true, true, 3)
end
