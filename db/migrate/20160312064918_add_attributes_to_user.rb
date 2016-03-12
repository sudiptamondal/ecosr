class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :contact_number, :string
    add_column :users, :subscribe_me, :boolean
  end
end
