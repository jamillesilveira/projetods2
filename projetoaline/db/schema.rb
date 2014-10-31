# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140926134344) do

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.string   "matricula",        limit: 8
    t.string   "senha",            limit: 10
    t.string   "email"
    t.date     "dataDeNascimento"
    t.string   "nota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bimestres", force: true do |t|
    t.string   "descricaoBimestre"
    t.integer  "codigoBimestre"
    t.integer  "disciplina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bimestres", ["disciplina_id"], name: "index_bimestres_on_disciplina_id"

  create_table "disciplinas", force: true do |t|
    t.string   "descricaoDisciplina"
    t.string   "codigoDisciplina"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lista", force: true do |t|
    t.string   "titulo"
    t.integer  "bimestre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lista", ["bimestre_id"], name: "index_lista_on_bimestre_id"

  create_table "questaos", force: true do |t|
    t.integer  "cod"
    t.string   "enunciado"
    t.string   "resposta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
