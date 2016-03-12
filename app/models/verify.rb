# == Schema Information
#
# Table name: verifies
#
#  id                  :integer          not null, primary key
#  registration_number :string(255)
#  email               :string(255)
#  website             :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Verify < ActiveRecord::Base
  attr_accessible :email, :registration_number, :website
end
