
require 'glexchange/model/LanguageDirection'
require 'glexchange/model/Workflow'
require 'glexchange/model/CustomAttribute'
module Glexchange
	module Model
		class PDProject

			attr_accessor :shortCode
			attr_accessor :name
			attr_accessor :ticket
			attr_accessor :languageDirections
			attr_accessor :fileFormats
			attr_accessor :workflows
			attr_accessor :customAttributes

			def initialize(externalProject)
				@name = externalProject.projectInfo.name;
				@shortCode = externalProject.projectInfo.shortCode;
				@ticket = externalProject.ticket
				
				@languageDirections = Array.new
				for externalLanguageDirection in externalProject.projectLanguageDirections
					@languageDirections << Glexchange::Model::PDLanguageDirection.new(externalLanguageDirection)
				end
				
				@fileFormats = Array.new
				for fileFormatProfile in externalProject.fileFormatProfiles
					@fileFormats << fileFormatProfile.profileName
				end
				
				@workflows = Array.new
				if externalProject.workflowDefinitions != nil then
					for externalWorkflowDefinition in externalProject.workflowDefinitions
						@workflows << Glexchange::Model::PDWorkflow.new(externalWorkflowDefinition)
					end
				end
				
				@customAttributes = Array.new
				if externalProject.projectCustomFieldConfiguration != nil then
					for externalCustomField in externalProject.projectCustomFieldConfiguration
						@customAttributes << Glexchange::Model::PDCustomAttribute.new(externalCustomField)
					end
				end
			end
		end
	end
end

