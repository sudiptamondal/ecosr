class Event < ActiveRecord::Base
  attr_accessible :date, :description, :name, :ng_org_id, :city
end
