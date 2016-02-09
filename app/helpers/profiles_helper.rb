module ProfilesHelper

	def only_us_and_canada
  	Carmen::Country.all
	end

end
