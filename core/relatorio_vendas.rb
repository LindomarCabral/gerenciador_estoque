require 'terminal-table'

def relatorio_vendas(vendas)
  limpar_tela

  if vendas.empty?
    mensagem_vermelho("Nenhuma venda registrada!")
    return
  end

  vendas.each do |venda|
    puts amarelo("Venda ##{venda[:id]} - #{venda[:data]}")
    puts azul("Cliente: #{venda[:cliente]}")

    table = Terminal::Table.new do |t|
      t.headings = ['Produto', 'Quantidade', 'Subtotal']
      venda[:itens].each do |i|
        t.add_row [i[:produto], i[:quantidade], "R$ #{i[:subtotal]}"]
      end
    end

    puts table
    puts verde("Total da venda: R$ #{venda[:total]}")
    puts "-" * 50
  end

  mensagem_amarelo("Pressione ENTER para continuar...", false, false)
  gets
end
