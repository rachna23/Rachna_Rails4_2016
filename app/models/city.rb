class City < ActiveRecord::Base
	has_many :Profile_cities
  has_many :profiles, :through => :Profile_cities
end
