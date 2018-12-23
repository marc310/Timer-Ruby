# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_22_010719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.string "celular"
    t.boolean "ativo"
    t.decimal "precoHora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faturas", force: :cascade do |t|
    t.date "emissao"
    t.date "vencimento"
    t.boolean "pago"
    t.decimal "totalFatura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moedas", force: :cascade do |t|
    t.string "cod"
    t.string "simbolo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagamentos", force: :cascade do |t|
    t.date "data"
    t.string "descricao"
    t.decimal "valorPago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projetos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.decimal "precoProjeto"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cliente_id"
    t.index ["cliente_id"], name: "index_projetos_on_cliente_id"
  end

  create_table "tarefas", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabalhos", force: :cascade do |t|
    t.datetime "inicio"
    t.datetime "final"
    t.string "horas"
    t.decimal "rendimento"
    t.boolean "livre"
    t.boolean "faturado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notas"
    t.bigint "projeto_id"
    t.bigint "tarefa_id"
    t.index ["projeto_id"], name: "index_trabalhos_on_projeto_id"
    t.index ["tarefa_id"], name: "index_trabalhos_on_tarefa_id"
  end

  add_foreign_key "projetos", "clientes"
  add_foreign_key "trabalhos", "projetos"
  add_foreign_key "trabalhos", "tarefas"
end
