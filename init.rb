require_relative "display/menu"
require_relative "display/operacoes_de_tela"

require_relative "core/cadastrar_produto"
require_relative "core/listar_produtos"
require_relative "core/retirar_estoque"
require_relative "core/cadastrar_cliente"
require_relative "core/listar_clientes"
require_relative "core/realizar_venda"
require_relative "core/relatorio_vendas"

produtos = []
clientes = []
vendas   = []

iniciar_menu(produtos, clientes, vendas)
