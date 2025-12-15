require 'terminal-table'

def listar_clientes(clientes)
  limpar_tela

  mensagem_amarelo("====== Lista de clientes ========", false, false)

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'CPF', 'Telefone']
    clientes.each do |c|
      t.add_row [c[:id], c[:nome], c[:cpf], c[:telefone]]
    end
  end

  puts table

  mensagem_amarelo("Digite ENTER para continuar ...", false, false)
  gets
  limpar_tela
end
