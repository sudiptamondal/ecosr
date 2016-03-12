class CreateNgOrgs < ActiveRecord::Migration
  def change
    create_table :ng_orgs do |t|
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.string :registration_date
      t.string :registration_number
      t.string :domain
      t.string :mobile
      t.string :email
      t.string :password
      t.string :website

      t.timestamps
    end
  end
end
