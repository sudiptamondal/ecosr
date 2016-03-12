class NgOrg < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :city, :country, :domain, :email, :mobile, :name, :password, :registration_date, :registration_number, :state, :website
end
