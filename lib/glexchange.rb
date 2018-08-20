#!/usr/bin/env ruby
require "base64"
require 'glexchange/pdws/DocumentService_4180Driver.rb'
require 'glexchange/pdws/ProjectService_4180Driver.rb'
require 'glexchange/pdws/SubmissionService_4180Driver.rb'
require 'glexchange/pdws/TargetService_4180Driver.rb'
require 'glexchange/pdws/UserProfileService_4180Driver.rb'
require 'glexchange/pdws/WorkflowService_4180Driver.rb'
require 'glexchange/header/WsseHeaders.rb'
require 'glexchange/model/ProjectDirectorConfig'
require 'glexchange/model/Project'
require 'glexchange/model/Document'
require 'glexchange/model/Submission'
require 'glexchange/model/Target'


class GLExchange
	@connectionConfig
	@submission
	
	@documentService
	@projectService
	@submissionService
	@targetService
	@userProfileService
	@workflowService
	
	def initialize(config)
		setConnectionConfig(config)
	end
	
	def cancelDocument (documentTicket, locale = nil)
		if locale != nil
			cancelTargetRequest = Glexchange::Pdws::CancelDocument.new (documentTicket)
			return @targetService.cancelTarget ( cancelTargetRequest )
		else
			dticket = Glexchange::Pdws::DocumentTicket.new
			dticket.ticketId = documentTicket
			cancelDocumentRequest = Glexchange::Pdws::CancelTargetByDocumentId.new(dticket, locale)
			return @targetService.cancelTargetByDocumentId ( cancelDocumentRequest )
		end
	end

	def cancelSubmission (submissionTicket, comment = nil)
		if comment == nil
			cancelSubmissionRequest = Glexchange::Pdws::CancelSubmission.new(submissionTicket)
			response = @submissionService.cancelSubmission ( cancelSubmissionRequest )
			return response.m_return
		else
			cancelSubmissionRequest = Glexchange::Pdws::CancelSubmissionWithComment.new(submissionTicket, comment)
			response = @submissionService.cancelSubmissionWithComment ( cancelSubmissionRequest )
			return response.m_return
		end
	end
	
	def downloadTarget (ticket)
		downloadTargetResourceRequest = Glexchange::Pdws::DownloadTargetResource.new(ticket)
		response = @targetService.downloadTargetResource ( downloadTargetResourceRequest )
		repositoryItem = response.m_return
		
		return Base64.decode64(repositoryItem.data)
	end
	
	def getCancelledTargets (maxResults)
		projects = getProjects
		tickets = Array.new
		for project in projects
			tickets << project.ticket
		end

		getCanceledTargetsByProjectsRequest = Glexchange::Pdws::GetCanceledTargetsByProjects.new(tickets, maxResults)
		cancelledTargets = @targetService.getCanceledTargetsByProjects ( getCanceledTargetsByProjectsRequest )
		
		result = Array.new
		for externalTarget in cancelledTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		return result
	end
	
	def getCancelledTargetsBySubmission(submissionTicket, maxResults)
		getCancelledTargetsBySubmissionRequest = Glexchange::Pdws::GetCanceledTargetsBySubmissions.new
		getCancelledTargetsBySubmissionRequest.maxResults = maxResults
		getCancelledTargetsBySubmissionRequest.submissionTickets = Array.new
		getCancelledTargetsBySubmissionRequest.submissionTickets << submissionTicket 
		
		cancelledTargets = @targetService.getCanceledTargetsBySubmissions ( getCancelledTargetsBySubmissionRequest )
		result = Array.new
		for externalTarget in cancelledTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		return result

	end

	def getCancelledTargetsBySubmissions(submissionTickets, maxResults)
		getCancelledTargetsBySubmissionRequest = Glexchange::Pdws::GetCanceledTargetsBySubmissions.new
		getCancelledTargetsBySubmissionRequest.maxResults = maxResults
		getCancelledTargetsBySubmissionRequest.submissionTickets = submissionTickets 
		
		cancelledTargets = @targetService.getCanceledTargetsBySubmissions ( getCancelledTargetsBySubmissionRequest )
		result = Array.new
		for externalTarget in cancelledTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		return result

	end
	
	def getCompletedTargets (maxResults)
		projects = getProjects
		tickets = Array.new
		for project in projects
			tickets << project.ticket
		end
		
		getCompletedTargetsByProjectsRequest = Glexchange::Pdws::GetCompletedTargetsByProjects.new(tickets, maxResults)
		
		completedTargets = @targetService.getCompletedTargetsByProjects ( getCompletedTargetsByProjectsRequest )
		
		result = Array.new
		for externalTarget in completedTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		
		return result
	end
	
	def getCompletedTargetsByProject (project, maxResults )
		getCompletedTargetsByProjectsRequest = Glexchange::Pdws::GetCompletedTargetsByProjects.new
		
		getCompletedTargetsByProjectsRequest.projectTickets = Array.new
		getCompletedTargetsByProjectsRequest.projectTickets << project.ticket 
		getCompletedTargetsByProjectsRequest.maxResults = maxResults
		
		completedTargets = @targetService.getCompletedTargetsByProjects ( getCompletedTargetsByProjectsRequest )
		result = Array.new
		for externalTarget in completedTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		return result
	end
	
	def getCompletedTargetsByProjects (projectTickets, maxResults )
		getCompletedTargetsByProjectsRequest = Glexchange::Pdws::GetCompletedTargetsByProjects.new
		
		getCompletedTargetsByProjectsRequest.projectTickets = projectTickets
		getCompletedTargetsByProjectsRequest.maxResults = maxResults
		
		completedTargets = @targetService.getCompletedTargetsByProjects ( getCompletedTargetsByProjectsRequest )
		result = Array.new
		for externalTarget in completedTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		return result
	end
	
	def getCompletedTargetsByDocuments (documentTickets, maxResults )
		getCompletedTargetsByDocumentsRequest = Glexchange::Pdws::GetCompletedTargetsByDocuments.new
		
		getCompletedTargetsByDocumentsRequest.documentTickets = Array.new(documentTickets)
		getCompletedTargetsByDocumentsRequest.maxResults = maxResults
		
		completedTargets = @targetService.getCompletedTargetsByDocuments ( getCompletedTargetsByDocumentsRequest )
		result = Array.new
		for externalTarget in completedTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		return result
	end
	
	def getCompletedTargetsBySubmission(submissionTicket, maxResults)
		getCompletedTargetsBySubmissionsRequest = Glexchange::Pdws::GetCompletedTargetsBySubmissions.new
		
		getCompletedTargetsBySubmissionsRequest.submissionTickets = Array.new
		getCompletedTargetsBySubmissionsRequest.submissionTickets << submissionTicket
		getCompletedTargetsBySubmissionsRequest.maxResults = maxResults
		
		completedTargets = @targetService.getCompletedTargetsBySubmissions ( getCompletedTargetsBySubmissionsRequest )
		
		result = Array.new
		for externalTarget in completedTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		return result
	end
	
	def getCompletedTargetsBySubmissions(submissionTickets, maxResults)
		getCompletedTargetsBySubmissionsRequest = Glexchange::Pdws::GetCompletedTargetsBySubmissions.new
		
		getCompletedTargetsBySubmissionsRequest.submissionTickets = submissionTickets
		getCompletedTargetsBySubmissionsRequest.maxResults = maxResults
		
		completedTargets = @targetService.getCompletedTargetsBySubmissions ( getCompletedTargetsBySubmissionsRequest )
		
		result = Array.new
		for externalTarget in completedTargets
			result << Glexchange::Model::PDTarget.new(externalTarget)
		end
		return result
	end
	
	def getProject(shortCode)
		request = Glexchange::Pdws::FindProjectByShortCode.new
		request.projectShortCode = shortCode
		return Glexchange::Model::PDProject.new(@projectService.findProjectByShortCode(request).m_return)
	end

	def getProjects
		projects = Array.new
		getUserProjectsResponse= @projectService.getUserProjects(Glexchange::Pdws::GetUserProjects.new(true))
		for project in getUserProjectsResponse
			projects << Glexchange::Model::PDProject.new(project)
		end
		return projects
	end
	
	def getSubmissionName (submissionTicket)
		findSubmissionByTicketRequest = Glexchange::Pdws::FindByTicket.new (submissionTicket)
		
		response = @submissionService.findByTicket ( findSubmissionByTicketRequest )
		if response != nil
			return response.m_return.submissionInfo.name
		else
			raise "Invalid submission ticket"
		end
	end

	def getSubmissionStatus (submissionTicket)
		findSubmissionByTicketRequest = Glexchange::Pdws::FindByTicket.new (submissionTicket)
		
		response = @submissionService.findByTicket ( findSubmissionByTicketRequest )
		if response != nil
			return response.m_return.status
		else
			raise "Invalid submission ticket"
		end
	end

	def getSubmissionId (submissionTicket)
		findSubmissionByTicketRequest = Glexchange::Pdws::FindByTicket.new (submissionTicket)
		
		response = @submissionService.findByTicket ( findSubmissionByTicketRequest )
		if response != nil
			return response.m_return.submissionId
		else
			raise "Invalid submission ticket"
		end
	end
	
	def getSubmissionTicket
		if @submission != nil && @submission.ticket != nil
			return @submission.ticket
		else
			raise "Submission not initialized"
		end
	end
	
	def getUnstartedSubmissions (project)
		submissions = Array.new
		findCreatingSubmissionsByProjectShortCodeRequest = Glexchange::Pdws::FindCreatingSubmissionsByProjectShortCode.new (project.shortCode)
		creatingSubmissions = @submissionService.findCreatingSubmissionsByProjectShortCode(findCreatingSubmissionsByProjectShortCodeRequest)
		for creatingSubmission in creatingSubmissions
			sub = Glexchange::Model::Submission.new
			sub.ticket = creatingSubmission.ticket
			sub.name = creatingSubmission.submissionInfo.name
			submissions << sub
		end
		return submissions
	end
	
	def initSubmission(submission)
		validateSubmission ( submission )

		@submission = submission
		@submission.ticket = ""
	end
	
	def isSubmitterValid(shortCode, submitter)
		getSubmittersRequest = Glexchange::Pdws::GetSubmitters.new (shortCode)
		submitters = @userProfileService.GetSubmitters(getSubmittersRequest)
		for submitter in submitters
			info = submitter.userInfo
			if(info.userName == submitter && info.enabled && !info.accountLocked && info.accountNonExpired)
			    return true
			end
		end

		return false
	end
	
	def sendDownloadConfirmation (ticket)
		sendDownloadConfirmationRequest = Glexchange::Pdws::SendDownloadConfirmation.new (ticket)
		response = @targetService.sendDownloadConfirmation ( sendDownloadConfirmationRequest )
		
		return response.m_return
	end
	
	def startSubmission
		if @submission == nil || @submission.project == nil || @submission.name == nil
			raise "Please initialize submission first."
		end
		
		if @submission.ticket == nil || @submission.ticket == ""
			raise "Please upload a translatable document first."
		end
		
		submissionInfo = createSubmissionInfo
		
		startSubmissionRequest = Glexchange::Pdws::StartSubmission.new(@submission.ticket, submissionInfo)
		@submissionService.startSubmission ( startSubmissionRequest )
		
		submissionTicket = @submission.ticket

		if @submission.owner != nil
			addOwnerRequest = Glexchange::Pdws::AddOwner.new(submissionTicket, @submission.owner)
			@submissionService.addOwner ( addOwnerRequest )
		end
		@submission = nil
		
		return submissionTicket
	end
	
	def uploadReference (referenceDocument)
		if referenceDocument == nil || referenceDocument.data == nil
			raise "Document is empty" 
		end
		if referenceDocument.name == nil
			raise "Document name not set" 
		end
		
		if @submission == nil || @submission.ticket == nil
			raise "Submission not initialized." 
		end
		if @submission.ticket == ""
			raise "Invalid submission ticket. Please upload a translatable document before attempting to upload reference documents." 
		end
		
		uploadReferenceRequest = Glexchange::Pdws::UploadReference.new
		uploadReferenceRequest.data = Base64.strict_encode64(referenceDocument.data)
		uploadReferenceRequest.submissionId = @submission.ticket
		uploadReferenceRequest.resourceInfo = referenceDocument.getResourceInfo
		
		response =  @submissionService.uploadReference ( uploadReferenceRequest )
		return response.m_return
	end
	
	def uploadTranslatable (document)
		if @submission==nil or @submission.ticket==nil
			raise "Submission not initialized."
		end
		validateDocument ( document )
		
		documentInfo = document.getDocumentInfo ( @submission )
		resourceInfo = document.getResourceInfo
		
		submitDocumentWithBinaryTextRequest = Glexchange::Pdws::SubmitDocumentWithBinaryResource.new(documentInfo, resourceInfo, Base64.strict_encode64(document.data))
		response = @documentService.submitDocumentWithBinaryResource ( submitDocumentWithBinaryTextRequest )
		documentTicket = response.m_return

		if documentTicket != nil
			@submission.ticket = documentTicket.submissionTicket
		end
		
		return documentTicket.ticketId
	end
	
private	
	def createSubmissionInfo
		submissionInfo = Glexchange::Pdws::SubmissionInfo.new
		submissionInfo.projectTicket = @submission.project.ticket
		submissionInfo.name = @submission.name
		if @submission.pmNotes != nil
			submissionInfo.internalNotes = @submission.pmNotes
		end
		
		if @submission.dueDate != nil
			dateRequested = Glexchange::Pdws::Date.new
			dateRequested.date = @submission.dueDate*1000
			dateRequested.critical = false
			submissionInfo.dateRequested = dateRequested
		end
		
		metadatas = Array.new
		if @submission.metadata != nil
			for key in @submission.metadata.keys
				metadatas << Glexchange::Pdws::Metadata.new(key[0...255], @submission.metadata[key][0...1024])
			end
		end
		submissionInfo.metadata = metadatas
		
		if @submission.submitter != nil
			submissionInfo.submitters = Array.new
			submissionInfo.submitters << @submission.submitter 
		end
		
		priority = Glexchange::Pdws::Priority.new
		priority.value = 1
		if @submission.isUrgent != nil && @submission.isUrgent == true
			priority.value = 2
		end
		submissionInfo.priority = priority
		
		attributes = Array.new
		if @submission.customAttributes != nil
			for key in @submission.customAttributes.keys
				attributes << Glexchange::Pdws::SubmissionCustomFields.new(key, @submission.customAttributes[key])
			end
		end
		submissionInfo.submissionCustomFields = attributes
		
		if @submission.workflow != nil && @submission.workflow.ticket != ""
			submissionInfo.workflowDefinitionTicket = @submission.workflow.ticket
		end
		
		return submissionInfo
	end
	
	def validateDocument (document)
		if document == nil || document.data == nil || document.data.length < 1
			raise "Document is empty"
		end
		
		if document.name == nil
			raise "Document name not set"
		end
		
		if document.fileformat != "Non-Parsable"
			isFileFormatCorrect = false
			for fileFormat in @submission.project.fileFormats
				if fileFormat == document.fileformat
					isFileFormatCorrect = true
					break
				end
			end
			if isFileFormatCorrect == false
				raise "Specified file format '#{document.fileformat}' doesn`t exist in specified project"
			end
		end
		
		
		if document.sourceLanguage == nil || document.sourceLanguage.length < 2
			raise "Source language not set"
		end
		
		if document.targetLanguages == nil || document.targetLanguages.length < 1
			raise "Target languages are not set"
		end
		
		for language in document.targetLanguages
			isTargetLanguageFound = false
			for languageDirection in @submission.project.languageDirections
				if languageDirection.sourceLanguage == document.sourceLanguage && languageDirection.targetLanguage == language
					isTargetLanguageFound = true
					break
				end
			end
			if isTargetLanguageFound == false
				raise "Project is not configured for language direction '#{document.sourceLanguage} - #{language}'"
			end
		end
	end
	
	def validateSubmission (submission)
		if submission == nil
			raise "Please initialize submission first."
		end
		if submission.project == nil
			raise "Please set submission project" 
		end
		if submission.name == nil
			raise "Please set submission name"
		end
		
		if submission.workflow != nil
			isSet = false
			for workflow in submission.project.workflows
				if workflow.ticket == submission.workflow.ticket
					isSet = true
					break
				end
			end
			if isSet == false
				raise "Invalid submission workflow #{submission.workflow.name}"
			end
		end
	
		if submission.dueDate != nil
			if ((Date.today.to_time.to_i) > submission.dueDate)
				raise "Submission due date should be greater than current date"
			end
		end
	
		if submission.submitter != nil
			isSubmitterExists = false
			
			submitters = @userProfileService.getSubmitters( Glexchange::Pdws::GetSubmitters.new(submission.project.shortCode) )
			if submitters != nil
				for submitter in submitters
					if submission.submitter == submitter.userInfo.userName
						isSubmitterExists = true
						break
					end
				end
			end
			
			if isSubmitterExists == false
				raise "Specified submitter '#{submission.submitter}' doesn`t exist"
			end
		end
		
		if submission.project.customAttributes != nil && submission.project.customAttributes.length > 0
			for projectCustomAttribute in submission.project.customAttributes
				if projectCustomAttribute.mandatory
					isSet = false
					if submission.customAttributes !=nil
						for key in submission.customAttributes.keys
							if key == projectCustomAttribute.name
								isSet = true
								break
							end
						end
					end
					if isSet == false
						raise "Mandatory custom field '#{projectCustomAttribute.name}' is not set"
					end
				end
			end
			if submission.customAttributes !=nil && submission.customAttributes.length > 0
				for key in submission.customAttributes.keys
					isExists = false
					for projectCustomAttribute in submission.project.customAttributes
						if key == projectCustomAttribute.name
							isExists = true
							if projectCustomAttribute.type=="COMBO" && projectCustomAttribute.values != nil
								comboValueCorrect = false
								va = projectCustomAttribute.values.split(',')
								for option in va
									if option == submission.customAttributes[key]
										comboValueCorrect = true
										break
									end
								end
								if comboValueCorrect == false
									raise "Value '#{submission.customAttributes[key]}' for custom field '#{key}' is not allowed. Allowed values:#{projectCustomAttribute.values}"
								end
							end
						end
					end
					if isExists == false
						raise "Custom field '#{key}' is not allowed in project"
					end
				end
			end
		else
			if submission.customAttributes !=nil && submission.customAttributes.length > 0
				raise "Project doesn't have custom attributes"
	    	end
		end
	end
	
	def addHeaders (obj)
		obj.headerhandler << Glexchange::Header::WsseAuthHeader.new(@connectionConfig.username, @connectionConfig.password)
		obj.headerhandler << Glexchange::Header::WsseUserAgentHeader.new(@connectionConfig.userAgent)
		obj.options["soap.envelope.no_indent"] = true
		return obj
	end
	
	def setConnectionConfig(config = nil)
		if config==nil 
			raise "Config is nil"
		elsif config.url==nil or config.url.length<7 
			raise "PD Url not set"
		elsif config.username==nil or config.username.length<=0
			raise "Username not set"
		elsif config.password==nil or config.password.length<=0
			raise "Password not set"
		elsif config.userAgent==nil or config.userAgent.length<=0
			raise "UserAgent not set"
		end
		@connectionConfig = config
		
		if @connectionConfig.url[-1,1]=='/' then
			@connectionConfig.url = @connectionConfig.url.chomp.chop
		end
		
		@documentService = addHeaders(Glexchange::Pdws::DocumentServicePortType.new(@connectionConfig.url + "/services/DocumentService_4180"))
		@projectService = addHeaders(Glexchange::Pdws::ProjectServicePortType.new(@connectionConfig.url + "/services/ProjectService_4180"))
		@submissionService = addHeaders(Glexchange::Pdws::SubmissionServicePortType.new(@connectionConfig.url + "/services/SubmissionService_4180"))
		@targetService = addHeaders(Glexchange::Pdws::TargetServicePortType.new(@connectionConfig.url + "/services/TargetService_4180"))
		@userProfileService = addHeaders(Glexchange::Pdws::UserProfileServicePortType.new(@connectionConfig.url + "/services/UserProfileService_4180"))
		@workflowService = addHeaders(Glexchange::Pdws::WorkflowServicePortType.new(@connectionConfig.url + "/services/WorkflowService_4180"))

		begin
			projects = @projectService.getUserProjects(Glexchange::Pdws::GetUserProjects.new(true))
			if projects!=nil and projects.length==1 and projects[0]==nil
				raise "Projects is nil"
			end
		rescue Exception
			throw "Invalid config. " + $!.to_s
		end
		
	end
end

module SOAP

	class Generator
		def encode_tag(elename, attrs = nil)
		    if attrs.nil? or attrs.empty?
		    	@buf << "#{ @indent }<#{ elename }>"
		    	return 
		    end
		    ary = []
		    attrs.each do |key, value|
		    	ary << %Q[#{ key }="#{ get_encoded(value.to_s) }"]
		    end
		    case ary.size
		    	when 0
		      		@buf << "#{ @indent }<#{ elename }>"
		    	when 1
		      		@buf << %Q[#{ @indent }<#{ elename } #{ ary[0] }>]
		    	else
		      		@buf << "#{ @indent }<#{ elename } " <<
		        	ary.join(" #{ @indent }#{ @indentstr * 2 }") <<
					'>'
		    end
		end

	  	def encode_tag_end(elename, cr = nil)
	  		if cr
		      @buf << "#{ @indent }</#{ elename }>"
		    else
		      @buf << "</#{ elename }>"
		    end
	  	end
	end
end