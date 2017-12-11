#!/usr/bin/env ruby
#dateTime problem in userprofile
#file encoding
#submit bin: org.apache.axiom.om.impl.llom.OMTextImpl cannot be cast to org.apache.axiom.om.OMElement (SOAP::FaultError)
require 'fileutils'
require 'glexchange'
require 'glexchange/model/ProjectDirectorConfig'
require 'glexchange/model/Submission'
require 'glexchange/model/Document'
require './utils/Config'

config_file = 'config.properties'
$source_folder = './resources/'
$translated_folder = 'translated/'
$config = Config.new(config_file)
p $config
def doSend
	glxchange = initGLExchange

	pdproject = glxchange.getProject($config.project)
	puts "Using project #{pdproject.name}"
	
	submission = initSubmission(pdproject)
	
	glxchange.initSubmission (submission)
	puts "Submission initialized";

	dir = $source_folder+$config.sourceLanguage
	if !File.exist?( dir ) then 
		puts( "Please put files for translation to #{dir} " )
		return
	end
	
	Dir.foreach( dir ){
		|f|
		path = "#{dir}\\#{f}"
		if !File.directory?(path) then
			document = Glexchange::Model::PDDocument.new
			document.fileformat = $config.fileFormat
			document.name = f
			document.sourceLanguage = $config.sourceLanguage
			document.targetLanguages = $config.targetLanguages
			document.data = IO.binread(path)
			#document.data = "some text to translate"
			ticket = glxchange.uploadTranslatable ( document )
			puts "Document '#{document.name}' submitted with ticket '#{ticket}'";
		end
	}
	
	subTicket = glxchange.startSubmission
	puts "Submission started with ticket '#{subTicket}'"

end

def doRetrieve
	puts "Retrieving"
	glxchange = initGLExchange

	pdproject = glxchange.getProject($config.project)

	targets = glxchange.getCompletedTargetsByProject(pdproject, 9999)

	if targets.length>0
		folder = ""+$source_folder+$translated_folder
		if !File.exist?(folder)
			FileUtils.mkdir( folder )
		end
		for target in targets
			fileName = folder+target.targetLocale+"_"+target.documentName
			docTicket = target.documentTicket
			translatedText = glxchange.downloadTarget(target.ticket)
			file = File.new(fileName, "w") 
			file.puts( translatedText ) 
			file.close
			puts "#{target.documentName} [#{docTicket}] downloaded to #{fileName}"
			glxchange.sendDownloadConfirmation(target.ticket)
		end
	else 
		puts "No completed targets found"
	end
	puts "Retrieving finished"
end

def initGLExchange
	pdConfig = Glexchange::Model::ProjectDirectorConfig.new
	if $config.url != nil
		pdConfig.url = $config.url
	else
		raise "Configuration option 'pdurl' is not set"
	end
	
	if $config.username != nil
		pdConfig.username = $config.username
	else
		raise "Configuration option 'pdusername' is not set"
	end
	
	if $config.password != nil
		pdConfig.password = $config.password
	else
		raise "Configuration option 'pdpassword' is not set"
	end
	
	if $config.userAgent != nil
		pdConfig.userAgent = $config.userAgent
	else
		raise "Configuration option 'userAgent' is not set"
	end
	
	return GLExchange.new(pdConfig)
end

def initSubmission(project) 
    	submission = Glexchange::Model::PDSubmission.new
		if $config.prefix != nil
			submission.name = $config.prefix+"glcapi.ruby sample"
		else
			submission.name = "glcapi.ruby sample"
		end
		submission.project = project
		submission.isUrgent = true
		submission.pmNotes = "some pm notes"
		submission.dueDate = Date.new(2017,9,1).to_time.to_i
		return submission
end




while true
	print("Enter 's' for send,'r' for retrieve, 'q' for exit:")
	arg = gets()
	if arg.chomp=='s' then
		puts 'Starting send'
		doSend
	elsif arg.chomp == 'r'
		puts 'Starting retrieve'
		doRetrieve
	elsif arg.chomp == 'q'
		break
	else
		puts "Incorrect. Use 's' or 'r' or 'q'"
	end
end

