class BuildingsController < ApplicationController
	def upgrade
		#pp params
		#render template: "buildings/upgrade.json"
		@error = false
		
		begin
			Building.find(params["building_id"])
		rescue
			@error = true
		end
	end

	def levels
		building = Building.find(params["building_id"])
		@levels = BuildingLevel.where(building_id: building.id)
	end
end	