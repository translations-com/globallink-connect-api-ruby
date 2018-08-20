require 'glexchange/pdws/DocumentService_4180'
module Glexchange
	module Model
		class PDDocument
			attr_accessor :data
			attr_accessor :name
			attr_accessor :sourceLanguage
			attr_accessor :targetLanguages
			attr_accessor :clientIdentifier
			attr_accessor :encoding
			attr_accessor :fileformat
			attr_accessor :instructions
			attr_accessor :metadata

			def initialize 
				@encoding = "UTF-8"
				@clientIdentifier = nil
			end

			def getDocumentInfo(submission)
				documentInfo = Glexchange::Pdws::DocumentInfo.new
				documentInfo.projectTicket = submission.project.ticket
				documentInfo.name = @name
				documentInfo.sourceLocale = @sourceLanguage
					
				if submission.ticket != ""
					documentInfo.submissionTicket = submission.ticket
				end

				if @metadata != nil then
					metadatas = Array.new
					@metadata.keys.each do |key|
						metadatas << Glexchange::Pdws::Metadata.new(key[0...255], @metadata[key][0...1024])
					end
					documentInfo.metadata = metadatas
				end
				
				if @clientIdentifier != nil
					documentInfo.clientIdentifier = @clientIdentifier
				end
				
				if @instructions !=nil
					documentInfo.instructions = @instructions
				else
					documentInfo.instructions = submission.instructions
				end
				
				documentInfo.targetInfos = getTargetInfos (submission)
				
				return documentInfo
			end

			def getTargetInfos (submission)
				targetInfos = Array.new
				@targetLanguages.each do |language|
					targetInfo = Glexchange::Pdws::TargetInfo.new
					targetInfo.targetLocale = language
					
					if submission.dueDate != nil
						targetInfo.requestedDueDate = submission.dueDate*1000
					else
						targetInfo.requestedDueDate = 0
					end
					targetInfo.encoding = @encoding
					targetInfos << targetInfo
				end
				return targetInfos
			end
			
			def getResourceInfo
				resourceInfo = Glexchange::Pdws::ResourceInfo.new
				resourceInfo.encoding = @encoding
				resourceInfo.size = @data.length
				resourceInfo.classifier = @fileformat
				resourceInfo.name = @name
				resourceInfo.mimeType = "text/xml"
				if @clientIdentifier != nil
					resourceInfo.clientIdentifier = @clientIdentifier
				end

				return resourceInfo
			end
		end
	end
end