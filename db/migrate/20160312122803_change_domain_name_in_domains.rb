class ChangeDomainNameInDomains < ActiveRecord::Migration
  def up
    remove_column :domains, :domain_name
    add_column :domains, :name, :string
  end
end
