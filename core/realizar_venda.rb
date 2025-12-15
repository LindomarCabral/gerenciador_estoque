require 'terminal-table'

def realizar_venda(clientes, produtos, vendas)
  limpar_tela

  if clientes.empty? || produtos.empty?
    mensagem_vermelho("É necessário ter clientes e produtos cadastrados!")
    return
  end

  # Escolha do cliente
  mensagem_amarelo("====== Escolha um cliente ======", false, false)

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'CPF']
    clientes.each { |c| t.add_row [c[:id], c[:nome], c[:cpf]] }
  end

  puts table
  mensagem_azul("Digite o ID do cliente:", false, false)
  cliente_id = gets.to_i

  cliente = clientes.find { |c| c[:id] == cliente_id }
  unless cliente
    mensagem_vermelho("Cliente não encontrado!")
    return
  end

  itens = []
  loop do
    limpar_tela
    mensagem_amarelo("====== Escolha um produto ======", false, false)

    table = Terminal::Table.new do |t|
      t.headings = ['ID', 'Nome', 'Preço', 'Estoque']
      produtos.each { |p| t.add_row [p[:id], p[:nome], p[:preco], p[:quantidade]] }
    end
    puts table

    mensagem_azul("Digite o ID do produto (0 para finalizar):", false, false)
    produto_id = gets.to_i
    break if produto_id == 0

    produto = produtos.find { |p| p[:id] == produto_id }
    next unless produto

    mensagem_azul("Quantidade:", false, false)
    qtd = gets.to_i

    if qtd <= 0 || qtd > produto[:quantidade]
      mensagem_vermelho("Quantidade inválida!")
      next
    end

    produto[:quantidade] -= qtd
    subtotal = qtd * produto[:preco]

    itens << {
      produto: produto[:nome],
      quantidade: qtd,
      subtotal: subtotal
    }
  end

  total = itens.sum { |i| i[:subtotal] }

  vendas << {
    id: Time.now.to_i,
    cliente: cliente[:nome],
    itens: itens,
    total: total,
    data: Time.now.strftime("%d/%m/%Y %H:%M")
  }

  mensagem_verde("Venda realizada com sucesso! Total: R$ #{total.round(2)}", true, true, 3)
end
