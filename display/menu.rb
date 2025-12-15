def iniciar_menu(produtos, clientes, vendas)
  loop do
    mensagem_amarelo("======= MENU PRINCIPAL =======", false, false)
    mensagem_azul("1 - Cadastro de produtos", false, false)
    mensagem_azul("2 - Lista de produtos", false, false)
    mensagem_azul("3 - Retirada do estoque", false, false)
    mensagem_azul("4 - Cadastro de clientes", false, false)
    mensagem_azul("5 - Lista de clientes", false, false)
    mensagem_azul("6 - Realizar venda", false, false)
    mensagem_azul("7 - Relatório de vendas", false, false)
    mensagem_azul("8 - Sair", false, false)

    opcao = gets.to_i

    case opcao
    when 1 then cadastrar_produto(produtos)
    when 2 then listar_produtos(produtos)
    when 3 then retirar_estoque(produtos)
    when 4 then cadastrar_cliente(clientes)
    when 5 then listar_clientes(clientes)
    when 6 then realizar_venda(clientes, produtos, vendas)
    when 7 then relatorio_vendas(vendas)
    when 8
      limpar_tela
      exit
    else
      mensagem_vermelho("Opção inválida")
    end
  end
end
