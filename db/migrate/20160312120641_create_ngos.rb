class CreateNgos < ActiveRecord::Migration
  def change
    create_table :ngos do |t|
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.date :registration_date
      t.string :registration_number
      t.integer :domain_id
      t.string :contact_number
      t.string :website
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
