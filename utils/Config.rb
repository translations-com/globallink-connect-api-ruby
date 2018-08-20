class Config
	CONFIG_URL = 'url'
	CONFIG_USERNAME = 'username'
	CONFIG_PASSWORD = 'password'
	CONFIG_USERAGENT = 'userAgent'
	CONFIG_SOURCE_LANG = 'sourceLanguage'
	CONFIG_TARGET_LANGS = 'targetLanguages'
	CONFIG_PROJECT = 'project'
	CONFIG_FILE_FORMAT = 'fileFormatProfile'
	CONFIG_PREFIX = 'submissionPrefix'
	attr_accessor :url, :username, :password, :userAgent, :sourceLanguage, :targetLanguages, :project, :fileFormat, :prefix
	def initialize(file)
		if File.exist?(file) then 
			IO.foreach(file) do |line|
		#properties[$1.strip] = $2 if line =~ /([^=]*)=(.*)/
				if line =~ /([^=]*)=(.*)/ then
					if $1.strip == Config::CONFIG_URL
						@url = $2
					elsif $1.strip == Config::CONFIG_USERNAME
						@username = $2
					elsif $1.strip == Config::CONFIG_PASSWORD
						@password = $2
					elsif $1.strip == Config::CONFIG_USERAGENT
						@userAgent = $2
					elsif $1.strip == Config::CONFIG_SOURCE_LANG
						@sourceLanguage = $2
					elsif $1.strip == Config::CONFIG_TARGET_LANGS
						languages = $2
						@targetLanguages = languages.split(%r{,\s*})
					elsif $1.strip == Config::CONFIG_PROJECT
						@project = $2
					elsif $1.strip == Config::CONFIG_FILE_FORMAT
						@fileFormat = $2
					elsif $1.strip == Config::CONFIG_PREFIX
						@prefix = $2
					end
				end
			end
		else
			raise "Config file 'config.properties' not found"
		end
	end
end