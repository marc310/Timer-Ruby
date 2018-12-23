RailsAdmin.config do |config|

  config.main_app_name = ["CronoTimer ",""]
  config.navigation_static_links = {
    'Marcelo Motta' => 'http://marcelomotta.com'
  }
  config.navigation_static_label = "Links Úteis"
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
    #
  end

    # ******************************************************************
    config.model Cliente do
      create do
        field  :nome
        field  :email
        field  :telefone
        field  :celular
        field  :precoHora
        field  :moeda_id, :enum do
        enum do
          Moeda.all.collect {|p| [p.simbolo, p.id]}
          end
        end
      end

      edit do
        field  :nome
        field  :email
        field  :telefone
        field  :celular
        field  :moeda_id, :enum do
        enum do
          Moeda.all.collect {|p| [p.simbolo, p.id]}
          end
        end
        field  :precoHora
        end

      list do
        field  :nome
        field  :email
        field  :telefone
        field  :celular
        field  :moeda_id, :enum do
        enum do
          Moeda.all.collect {|p| [p.simbolo, p.id]}
          end
        end
        field  :precoHora
      end
    end
    # ******************************************************************
    config.model Projeto do
      create do
        field  :nome
        field  :descricao
        field  :precoProjeto
        field  :status
        field  :cliente_id, :enum do
        enum do
          Cliente.all.collect {|p| [p.nome, p.id]}
          end
        end

      end

      edit do
        field  :nome
        field  :descricao
        field  :precoProjeto
        field  :status
        field  :cliente_id, :enum do
        enum do
          Cliente.all.collect {|p| [p.nome, p.id]}
          end
        end
      end

      list do
        field  :nome
        field  :descricao
        field  :precoProjeto
        field  :status
        field  :cliente_id, :enum do
        enum do
          Cliente.all.collect {|p| [p.nome, p.id]}
          end
        end
      end
    end
    # ******************************************************************
    config.model Trabalho do
      label "Registros de Trabalho"
      weight -2
      navigation_icon 'fa fa-clock-o'
      create do
        field  :inicio
        field  :final
        field  :horas
        field  :rendimento
        field  :livre
        field  :faturado  do
          visible false
        end
        field  :notas
        field  :projeto_id, :enum do
        enum do
          Projeto.all.collect {|p| [p.nome, p.id]}
          end
        end
        field  :tarefa_id, :enum do
        enum do
          Tarefa.all.collect {|p| [p.nome, p.id]}
          end
        end
      end

      edit do
        field  :inicio
        field  :final
        field  :horas
        field  :rendimento
        field  :livre
        field  :faturado  do
          visible false
        end
        field  :notas
        field  :projeto_id, :enum do
        enum do
          Projeto.all.collect {|p| [p.nome, p.id]}
          end
        end
        field  :tarefa_id, :enum do
        enum do
          Tarefa.all.collect {|p| [p.nome, p.id]}
          end
        end
      end

      list do
        field  :horas
        field  :rendimento
        field  :livre
        field  :faturado  do
          visible false
        end
        field  :notas
        field  :projeto_id, :enum do
        enum do
          Projeto.all.collect {|p| [p.nome, p.id]}
          end
        end
        field  :tarefa_id, :enum do
        enum do
          Tarefa.all.collect {|p| [p.nome, p.id]}
          end
        end
      end
    end
    # ******************************************************************
    config.model Fatura do
      label "Financeiro"
      weight -1
      navigation_icon 'fa fa-money'
    end
    # ******************************************************************
    #
    #
end
