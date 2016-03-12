class Ngo < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :city, :contact_number, :country, :domain_id, :email, :name, :password, :pincode, :registration_date, :registration_number, :state, :website
end
