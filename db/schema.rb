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

ActiveRecord::Schema.define(:version => 20110704205735) do

  create_table "p1s", :force => true do |t|
    t.string   "nazwa"
    t.string   "opis"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prezults", :force => true do |t|
    t.string   "nazwa"
    t.string   "opis"
    t.integer  "problem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems", :force => true do |t|
    t.string   "nazwa"
    t.string   "opis"
    t.integer  "p1_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "problems", ["created_at"], :name => "index_problems_on_created_at"
  add_index "problems", ["p1_id"], :name => "index_problems_on_p1_id"

  create_table "project1s", :force => true do |t|
    t.string   "name"
    t.string   "describe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "subproblem_id"
    t.integer  "problem_id"
    t.string   "nazwa"
    t.string   "opis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["problem_id"], :name => "index_relationships_on_problem_id"
  add_index "relationships", ["subproblem_id", "problem_id"], :name => "index_relationships_on_subproblem_id_and_problem_id", :unique => true
  add_index "relationships", ["subproblem_id"], :name => "index_relationships_on_subproblem_id"

  create_table "rezults", :force => true do |t|
    t.string   "nazwa"
    t.string   "opis"
    t.integer  "p1_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
