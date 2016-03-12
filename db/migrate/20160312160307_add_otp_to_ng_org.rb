class AddOtpToNgOrg < ActiveRecord::Migration
  def change
    add_column :ng_orgs, :otp, :string
  end
end
