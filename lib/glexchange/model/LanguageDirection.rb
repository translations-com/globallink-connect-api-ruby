module Glexchange
	module Model
		class PDLanguageDirection

			attr_accessor :sourceLanguage
			attr_accessor :targetLanguage
			def initialize(externalLanguageDirection)
				@sourceLanguage = externalLanguageDirection.sourceLanguage.locale;
				@targetLanguage = externalLanguageDirection.targetLanguage.locale;
			end
		end
	end
end