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

ActiveRecord::Schema.define(version: 20161004193905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cadastro_plano_de_voos", force: :cascade do |t|
    t.text     "objetivos"
    t.string   "frequencia_voo"
    t.string   "duracao_voo"
    t.string   "numero_estacoes"
    t.text     "localizacao_estacoes"
    t.string   "transferencia"
    t.text     "local_decolagem"
    t.text     "requisitos_decolagem"
    t.text     "requisitos_pouso"
    t.text     "rota"
    t.text     "carga_util"
    t.text     "altura_maxima"
    t.string   "local_destino"
    t.datetime "data_voo"
    t.text     "codigo_chamada"
    t.text     "regras_voo"
    t.string   "tipo_operacao"
    t.string   "id_operador"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
