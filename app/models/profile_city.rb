class ProfileCity < ActiveRecord::Base
	belongs_to :city
  belongs_to :profile
end
