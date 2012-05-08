class CreateOnlineStudents < ActiveRecord::Migration
  def change
    create_table :online_students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.string :sslc_hall_ticket
      t.decimal :sslc_percentage, :precision => 4, :scale => 2
      t.integer :year_of_passing
      t.string :course_join
      t.string :address_line1
      t.string :address_line2
      t.string :address_landmark
      t.string :taluka
      t.string :district
      t.string :state
      t.string :pincode
      t.string :phone_number
      t.string :father_name
      t.string :parent_occupation
      t.integer :family_annual_income
      t.string :application_number

      t.timestamps
    end
  end
end

