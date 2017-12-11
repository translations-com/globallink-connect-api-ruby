
require 'glexchange/model/WordCount'
module Glexchange
	module Model
		class PDTarget
			attr_accessor :clientIdentifier
			attr_accessor :documentName
			attr_accessor :documentTicket
			attr_accessor :sourceLocale
			attr_accessor :targetLocale
			attr_accessor :metadata
			attr_accessor :ticket
			attr_accessor :wordCount
			def initialize(externalTarget)
				@documentName = externalTarget.document.documentInfo.name
				@sourceLocale = externalTarget.sourceLanguage.locale
				@targetLocale = externalTarget.targetLanguage.locale
				@ticket = externalTarget.ticket
				@documentTicket = externalTarget.document.ticket
				@clientIdentifier = externalTarget.document.documentInfo.clientIdentifier
				
				if externalTarget.tmStatistics != nil then
					@wordCount = Glexchange::Model::PDWordCount.new(externalTarget.tmStatistics.goldWordCount, externalTarget.tmStatistics.oneHundredMatchWordCount, externalTarget.tmStatistics.repetitionWordCount, externalTarget.tmStatistics.noMatchWordCount, externalTarget.tmStatistics.totalWordCount )
				end
				
				@metadata = Hash.new
				if externalTarget.targetInfo.metadata != nil then
					for externalMetadata in externalTarget.targetInfo.metadata
						@metadata[externalMetadata.key] = externalMetadata.value
					end
				end
			end
		end
	end
end