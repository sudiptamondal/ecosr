class AddDescriptionToNgOrg < ActiveRecord::Migration
  def change
    add_column :ng_orgs, :description, :text
  end
end
