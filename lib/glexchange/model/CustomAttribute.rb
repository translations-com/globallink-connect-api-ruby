module Glexchange
	module Model
		class PDCustomAttribute

			attr_accessor :mandatory
			attr_accessor :name
			attr_accessor :type
			attr_accessor :values
			
			def initialize(customAttribute = nil)
				if customAttribute != nil then
					@mandatory = customAttribute.mandatory
					@name = customAttribute.name
					@type = customAttribute.type
					@values = customAttribute.values
				end
			end
		end
	end
end