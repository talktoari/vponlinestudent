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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120508165403) do

  create_table "online_students", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "sslc_hall_ticket"
    t.decimal  "sslc_percentage",      :precision => 4, :scale => 2
    t.integer  "year_of_passing"
    t.string   "course_join"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_landmark"
    t.string   "taluka"
    t.string   "district"
    t.string   "state"
    t.string   "pincode"
    t.string   "phone_number"
    t.string   "father_name"
    t.string   "parent_occupation"
    t.integer  "family_annual_income"
    t.string   "application_number"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

end
