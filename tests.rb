require( "fileutils" )
require 'glexchange'
require 'glexchange/model/ProjectDirectorConfig'
require 'glexchange/model/Submission'
require 'glexchange/model/Document'
require 'glexchange/model/ReferenceDocument'
require './utils/Config'

def testConnectionConfig
	puts "TESTING connectionConfig"
	connectionConfig = Glexchange::Model::ProjectDirectorConfig.new
	connectionConfig.url = $config.url + "incorrect"
	connectionConfig.username = $config.username
	connectionConfig.password = $config.password
	connectionConfig.userAgent = $config.userAgent
	begin
		glxchange = GLExchange.new( connectionConfig )
		puts "\nERROR: Created with incorrect Url\n"
		$error_count+=1
	rescue
		puts "OK: Expected exception catched. Url not correct"
	end
	
	connectionConfig.url = $config.url
	connectionConfig.username = $config.username + "incorrect"
	begin
		glxchange = GLExchange.new( connectionConfig )
		puts "\nERROR: Created with incorrect credentials\n"
		$error_count+=1
	rescue
		puts "OK: Expected exception catched. Credentials not correct"
	end
	
	connectionConfig.username = $config.username
	connectionConfig.userAgent = nil
	begin
		glxchange = GLExchange.new( connectionConfig )
		puts "\nERROR: Created with empty useragent\n"
		$error_count+=1
	rescue
		puts "OK: Expected exception catched. UserAgent not set"
	end
	connectionConfig.userAgent = $config.userAgent
	
	begin
		glxchange = GLExchange.new( connectionConfig )
		puts "OK: Created "
	rescue Exception
		puts "\nERROR: Not created with correct config: #{$!}\n"
		$error_count+=1
	end
	puts "TEST finished"
end

def testInitSubmission()
	puts "TESTING initSubmission"
	connectionConfig = Glexchange::Model::ProjectDirectorConfig.new
	connectionConfig.url = $config.url
	connectionConfig.username = $config.username
	connectionConfig.password = $config.password
	connectionConfig.userAgent = $config.userAgent
	glxchange = GLExchange.new( connectionConfig )

	submission = Glexchange::Model::PDSubmission.new
	begin
		glxchange.initSubmission ( submission )
		puts "\nERROR: Initialized empty submission\n"
		$error_count+=1
	rescue
		puts "OK: Empty submission not initialized"
	end
	
	pdproject = glxchange.getProject($config.project)
	submission.project = pdproject
	begin
		glxchange.initSubmission ( submission )
		puts "\nERROR: Initialized unnamed submission\n"
		$error_count+=1
	rescue
		puts "OK: Unnamed submission not initialized"
	end
	
	submission.name = $submission_name
	submission.project = nil
	begin
		glxchange.initSubmission ( submission )
		puts "\nERROR: Initialized submission without project\n"
		$error_count+=1
	rescue
		puts "OK: Submission without project not initialized"
	end
	
	submission.project = pdproject
	submission.submitter = "incorrect"
	begin
		glxchange.initSubmission ( submission )
		puts "\nERROR: Initialized submission with incorrect submitter\n"
		$error_count+=1
	rescue
		puts "OK: Submission with incorrect submitter not initialized"
	end
	
	submission.submitter = $config.username
	submission.dueDate = 100
	begin
		glxchange.initSubmission ( submission )
		puts "\nERROR: Initialized submission with incorrect dueDate\n"
		$error_count+=1
	rescue
		puts "OK: Submission with incorrect dueDate not initialized"
	end
	
	submission.dueDate = 1412561974714
	begin
		glxchange.initSubmission ( submission )
		puts "OK: Initialized "
	rescue
		puts "\nERROR: Correct submission not initialized\n"
		$error_count+=1
	end
	
	puts "TEST finished"
end

def testUploadDocumentAndReference()
	connectionConfig = Glexchange::Model::ProjectDirectorConfig.new
	connectionConfig.url = $config.url
	connectionConfig.username = $config.username
	connectionConfig.password = $config.password
	connectionConfig.userAgent = $config.userAgent
	glxchange = GLExchange.new( connectionConfig )
	
	project = glxchange.getProject($config.project)
	originalSubmission = initSubmission(project)
	glxchange.initSubmission ( originalSubmission )
	puts "TESTING uploadReference and uploadDocument"
	referenceDocument = Glexchange::Model::PDReferenceDocument.new
	begin
		glxchange.uploadReference ( referenceDocument )
		puts "\nERROR: Uploaded empty reference document\n"
		$error_count+=1
	rescue
		puts "OK: Empty reference document not uploaded"
	end
	
	referenceDocument.name = "test name"
	begin
		glxchange.uploadReference ( referenceDocument )
		puts "\nERROR: Uploaded reference document without data\n"
		$error_count+=1
	rescue
		puts "OK: Reference document without data not uploaded"
	end
	
	referenceDocument.name = nil
	referenceDocument.data = "test data"
	begin
		glxchange.uploadReference ( referenceDocument )
		puts "\nERROR: Uploaded reference document without name\n"
		$error_count+=1
	rescue
		puts "OK: Reference document without name not uploaded"
	end
	
	referenceDocument.name = "test name"
	referenceDocument.data = "test data"
	begin
		glxchange.uploadReference ( referenceDocument )
		puts "\nERROR: Uploaded reference document before uploading translatable document\n"
		$error_count+=1
	rescue
		puts "OK: Reference document not uploaded before uploading translatable document"
	end
	
	begin
		glxchange.startSubmission ()
		puts "\nERROR: Started submission before uploading translatable document\n"
		$error_count+=1
	rescue
		puts "OK: Submission not started before uploading translatable document"
	end
	
	document = Glexchange::Model::PDDocument.new
	begin
		glxchange.uploadTranslatable ( document )
		puts "\nERROR: Uploaded empty translatable document\n"
		$error_count+=1
	rescue
		puts "OK: Empty translatable document not uploaded"
	end
	
	document.data="test data"
	begin
		glxchange.uploadTranslatable ( document )
		puts "\nERROR: Uploaded unnamed translatable document\n"
		$error_count+=1
	rescue
		puts "OK: Unnamed translatable document not uploaded"
	end
	
	document.name = "test name"
	begin
		glxchange.uploadTranslatable ( document )
		puts "\nERROR: Uploaded translatable document without fileFormat\n"
		$error_count+=1
	rescue
		puts "OK: Translatable document without fileFormat not uploaded"
	end
	
	document.fileformat = "Incorrect"
	begin
		glxchange.uploadTranslatable ( document )
		puts "\nERROR: Uploaded translatable document with incorrect fileFormat\n"
		$error_count+=1
	rescue
		puts "OK: Translatable document with incorrect fileFormat not uploaded"
	end
	
	document.sourceLanguage = "en-US"
	begin
		glxchange.uploadTranslatable ( document )
		puts "\nERROR: Uploaded translatable document without target languages\n"
		$error_count+=1
	rescue
		puts "OK: Translatable document without target languages not uploaded"
	end
	
	document.targetLanguages = Array.new 
	document.targetLanguages << "aa-BB"
	document.targetLanguages << "cc-DD"
	begin
		glxchange.uploadTranslatable ( document )
		puts "\nERROR: Uploaded translatable document with incorrect language directions\n"
		$error_count+=1
	rescue
		puts "OK: Translatable document with incorrect language directions not uploaded"
	end
	document = initDocument(project)
	glxchange.uploadTranslatable(document)
	submissionTicket = glxchange.startSubmission()
	puts "Testing started submission"
	pdSubmissionName = glxchange.getSubmissionName(submissionTicket)
	if pdSubmissionName == nil
		puts "\nERROR: Downloaded submission is null\n"
		$error_count+=1
		return
	else
		puts "OK: Submission exists"
	end
	
	if pdSubmissionName != $submission_name
		puts "\nERROR: Names not equal. Got '#{pdSubmissionName}', but expected '#{$submission_name}'\n"
		$error_count+=1
	else
		puts "OK: Submission name is correct"
	end
	puts "TEST finished"
end


def initDocument(project) 
	document = Glexchange::Model::PDDocument.new
	document.data = "Some text to translate"
	document.name = "Document name"
	document.fileformat = project.fileFormats[0]
	document.sourceLanguage = project.languageDirections[0].sourceLanguage
	document.targetLanguages = Array.new()
	document.targetLanguages << project.languageDirections[0].targetLanguage
	return document
end
def initSubmission(project)
	submission = Glexchange::Model::PDSubmission.new
	submission.name = $submission_name
	submission.project = project
	submission.submitter = $config.username
	submission.isUrgent = false
	submission.pmNotes = "some pm notes"
	submission.dueDate = Date.new(2017,9,1).to_time.to_i
	return submission
end
	
$error_count = 0
config_file = 'config.properties'
source_folder = './resources/'
translated_folder = 'translated/'
$submission_name = "unittest glc.ruby"
$config = Config.new(config_file)
p $config

puts "Running tests"
testConnectionConfig
testInitSubmission()
testUploadDocumentAndReference()
puts "Errors found: #{$error_count}"
