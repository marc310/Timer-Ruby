RailsAdmin.config do |config|

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
      end

      edit do
        field  :nome
        field  :email
        field  :telefone
        field  :celular
        end

      list do
        field  :nome
        field  :email
        field  :telefone
        field  :celular
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
    #
    #

end
