require 'glexchange/pdws/SubmissionService_4180'
module Glexchange
	module Model
		class PDReferenceDocument
			attr_accessor :data
			attr_accessor :name
			
			def getResourceInfo
				resourceInfo = Glexchange::Pdws::ResourceInfo.new
				resourceInfo.size = @data.length
				resourceInfo.name = @name
				return resourceInfo
			end
		end
	end
end
