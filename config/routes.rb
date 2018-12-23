Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  resources :pagamentos
  resources :faturas
  resources :trabalhos
  resources :projetos
  resources :moedas
  resources :clientes
  resources :tarefas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
