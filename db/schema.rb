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

ActiveRecord::Schema.define(version: 20141112001555) do

  create_table "avaliaca_medicos", force: true do |t|
    t.integer  "medico_id"
    t.string   "titulo"
    t.string   "texto"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avaliaca_medicos", ["medico_id"], name: "index_avaliaca_medicos_on_medico_id", using: :btree

  create_table "consultas", force: true do |t|
    t.datetime "data"
    t.integer  "medico_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  add_index "consultas", ["medico_id"], name: "index_consultas_on_medico_id", using: :btree
  add_index "consultas", ["usuario_id"], name: "index_consultas_on_usuario_id", using: :btree

  create_table "medicos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "especialidade"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "seguires", force: true do |t|
    t.integer  "medico_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seguires", ["medico_id"], name: "index_seguires_on_medico_id", using: :btree
  add_index "seguires", ["usuario_id"], name: "index_seguires_on_usuario_id", using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
