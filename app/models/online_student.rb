class OnlineStudent < ActiveRecord::Base
  validates_presence_of :first_name, :address_line1, :district, :state, :phone_number
end

