# == Schema Information
#
# Table name: ng_orgs
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  address_line1       :string(255)
#  address_line2       :string(255)
#  city                :string(255)
#  state               :string(255)
#  country             :string(255)
#  registration_date   :string(255)
#  registration_number :string(255)
#  domain              :string(255)
#  mobile              :string(255)
#  email               :string(255)
#  password            :string(255)
#  website             :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class NgOrg < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :city, :country, :domain, :email, :mobile, :name, :password, :registration_date, :registration_number, :state, :website
end
