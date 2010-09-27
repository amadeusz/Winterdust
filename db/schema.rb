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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100927052850) do

  create_table "groups", :force => true do |t|
    t.string   "opis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.string   "opis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.string   "opis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vats", :force => true do |t|
    t.string   "opis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wares", :force => true do |t|
    t.string   "kod"
    t.string   "nazwa"
    t.integer  "podatek"
    t.integer  "grupa"
    t.integer  "platnosc"
    t.integer  "jednostka"
    t.decimal  "ilosc"
    t.decimal  "cena_netto"
    t.decimal  "cena"
    t.integer  "op"
    t.integer  "bl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
