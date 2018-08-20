require 'xsd/qname'
module Glexchange
	module Pdws
		# {http://dto.model.projectdirector.gs4tr.org/xsd}Notification
		#   errorMessage - SOAP::SOAPString
		#   notificationDate - Date
		#   notificationPriority - NotificationPriority
		#   notificationText - SOAP::SOAPString
		class Notification
		  attr_accessor :errorMessage
		  attr_accessor :notificationDate
		  attr_accessor :notificationPriority
		  attr_accessor :notificationText

		  def initialize(errorMessage = nil, notificationDate = nil, notificationPriority = nil, notificationText = nil)
			@errorMessage = errorMessage
			@notificationDate = notificationDate
			@notificationPriority = notificationPriority
			@notificationText = notificationText
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}NotificationPriority
		#   notificationPriorityName - SOAP::SOAPString
		class NotificationPriority
		  attr_accessor :notificationPriorityName

		  def initialize(notificationPriorityName = nil)
			@notificationPriorityName = notificationPriorityName
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Announcement
		#   announcementText - SOAP::SOAPString
		#   date - Date
		class Announcement
		  attr_accessor :announcementText
		  attr_accessor :date

		  def initialize(announcementText = nil, date = nil)
			@announcementText = announcementText
			@date = date
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ContentMonitorPluginInfo
		#   pluginId - SOAP::SOAPString
		#   pluginName - SOAP::SOAPString
		class ContentMonitorPluginInfo
		  attr_accessor :pluginId
		  attr_accessor :pluginName

		  def initialize(pluginId = nil, pluginName = nil)
			@pluginId = pluginId
			@pluginName = pluginName
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Date
		#   critical - SOAP::SOAPBoolean
		#   date - SOAP::SOAPLong
		class Date
		  attr_accessor :critical
		  attr_accessor :date

		  def initialize(critical = nil, date = nil)
			@critical = critical
			@date = date
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Document
		#   documentGroup - DocumentGroup
		#   documentInfo - DocumentInfo
		#   id - SOAP::SOAPString
		#   sourceLanguage - Language
		#   sourceWordCount - SOAP::SOAPInt
		#   ticket - SOAP::SOAPString
		class Document
		  attr_accessor :documentGroup
		  attr_accessor :documentInfo
		  attr_accessor :id
		  attr_accessor :sourceLanguage
		  attr_accessor :sourceWordCount
		  attr_accessor :ticket

		  def initialize(documentGroup = nil, documentInfo = nil, id = nil, sourceLanguage = nil, sourceWordCount = nil, ticket = nil)
			@documentGroup = documentGroup
			@documentInfo = documentInfo
			@id = id
			@sourceLanguage = sourceLanguage
			@sourceWordCount = sourceWordCount
			@ticket = ticket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}DocumentGroup
		#   classifier - SOAP::SOAPString
		#   documents - Document
		#   mimeType - SOAP::SOAPString
		#   submission - Submission
		class DocumentGroup
		  attr_accessor :classifier
		  attr_accessor :documents
		  attr_accessor :mimeType
		  attr_accessor :submission

		  def initialize(classifier = nil, documents = [], mimeType = nil, submission = nil)
			@classifier = classifier
			@documents = documents
			@mimeType = mimeType
			@submission = submission
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}DocumentInfo
		#   childDocumentInfos - DocumentInfo
		#   clientIdentifier - SOAP::SOAPString
		#   dateRequested - Date
		#   instructions - SOAP::SOAPString
		#   metadata - Metadata
		#   name - SOAP::SOAPString
		#   projectTicket - SOAP::SOAPString
		#   sourceLocale - SOAP::SOAPString
		#   submissionTicket - SOAP::SOAPString
		#   targetInfos - TargetInfo
		#   wordCount - SOAP::SOAPInt
		class DocumentInfo
		  attr_accessor :childDocumentInfos
		  attr_accessor :clientIdentifier
		  attr_accessor :dateRequested
		  attr_accessor :instructions
		  attr_accessor :metadata
		  attr_accessor :name
		  attr_accessor :projectTicket
		  attr_accessor :sourceLocale
		  attr_accessor :submissionTicket
		  attr_accessor :targetInfos
		  attr_accessor :wordCount

		  def initialize(childDocumentInfos = [], clientIdentifier = nil, dateRequested = nil, instructions = nil, metadata = [], name = nil, projectTicket = nil, sourceLocale = nil, submissionTicket = nil, targetInfos = [], wordCount = nil)
			@childDocumentInfos = childDocumentInfos
			@clientIdentifier = clientIdentifier
			@dateRequested = dateRequested
			@instructions = instructions
			@metadata = metadata
			@name = name
			@projectTicket = projectTicket
			@sourceLocale = sourceLocale
			@submissionTicket = submissionTicket
			@targetInfos = targetInfos
			@wordCount = wordCount
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}DocumentPagedList
		#   elements - Document
		#   pagedListInfo - PagedListInfo
		#   tasks - Task
		#   totalCount - SOAP::SOAPLong
		class DocumentPagedList
		  attr_accessor :elements
		  attr_accessor :pagedListInfo
		  attr_accessor :tasks
		  attr_accessor :totalCount

		  def initialize(elements = [], pagedListInfo = nil, tasks = [], totalCount = nil)
			@elements = elements
			@pagedListInfo = pagedListInfo
			@tasks = tasks
			@totalCount = totalCount
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}DocumentSearchRequest
		#   projectTickets - SOAP::SOAPString
		#   sourceLocaleId - SOAP::SOAPString
		#   submissionTicket - SOAP::SOAPString
		class DocumentSearchRequest
		  attr_accessor :projectTickets
		  attr_accessor :sourceLocaleId
		  attr_accessor :submissionTicket

		  def initialize(projectTickets = [], sourceLocaleId = nil, submissionTicket = nil)
			@projectTickets = projectTickets
			@sourceLocaleId = sourceLocaleId
			@submissionTicket = submissionTicket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}DocumentTicket
		#   submissionTicket - SOAP::SOAPString
		#   ticketId - SOAP::SOAPString
		class DocumentTicket
		  attr_accessor :submissionTicket
		  attr_accessor :ticketId

		  def initialize(submissionTicket = nil, ticketId = nil)
			@submissionTicket = submissionTicket
			@ticketId = ticketId
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}EntityTypeEnum
		#   name - SOAP::SOAPString
		#   value - SOAP::SOAPInt
		class EntityTypeEnum
		  attr_accessor :name
		  attr_accessor :value

		  def initialize(name = nil, value = nil)
			@name = name
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}FileFormatProfile
		#   configurable - SOAP::SOAPBoolean
		#   isDefault - SOAP::SOAPBoolean
		#   mimeType - SOAP::SOAPString
		#   pluginId - SOAP::SOAPString
		#   pluginName - SOAP::SOAPString
		#   profileName - SOAP::SOAPString
		#   targetWorkflowDefinition - WorkflowDefinition
		#   ticket - SOAP::SOAPString
		class FileFormatProfile
		  attr_accessor :configurable
		  attr_accessor :isDefault
		  attr_accessor :mimeType
		  attr_accessor :pluginId
		  attr_accessor :pluginName
		  attr_accessor :profileName
		  attr_accessor :targetWorkflowDefinition
		  attr_accessor :ticket

		  def initialize(configurable = nil, isDefault = nil, mimeType = nil, pluginId = nil, pluginName = nil, profileName = nil, targetWorkflowDefinition = nil, ticket = nil)
			@configurable = configurable
			@isDefault = isDefault
			@mimeType = mimeType
			@pluginId = pluginId
			@pluginName = pluginName
			@profileName = profileName
			@targetWorkflowDefinition = targetWorkflowDefinition
			@ticket = ticket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}FileFormatProgressData
		#   dateCompleted - Date
		#   fileCount - SOAP::SOAPLong
		#   fileFormatName - SOAP::SOAPString
		#   fileProgressData - FileProgressData
		#   jobTicket - SOAP::SOAPString
		#   workflowDueDate - Date
		#   workflowStatus - SOAP::SOAPString
		class FileFormatProgressData
		  attr_accessor :dateCompleted
		  attr_accessor :fileCount
		  attr_accessor :fileFormatName
		  attr_accessor :fileProgressData
		  attr_accessor :jobTicket
		  attr_accessor :workflowDueDate
		  attr_accessor :workflowStatus

		  def initialize(dateCompleted = nil, fileCount = nil, fileFormatName = nil, fileProgressData = nil, jobTicket = nil, workflowDueDate = nil, workflowStatus = nil)
			@dateCompleted = dateCompleted
			@fileCount = fileCount
			@fileFormatName = fileFormatName
			@fileProgressData = fileProgressData
			@jobTicket = jobTicket
			@workflowDueDate = workflowDueDate
			@workflowStatus = workflowStatus
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}FileProgressData
		#   numberOfAvailableFiles - SOAP::SOAPInt
		#   numberOfCanceledFiles - SOAP::SOAPInt
		#   numberOfCompletedFiles - SOAP::SOAPInt
		#   numberOfDeliveredFiles - SOAP::SOAPInt
		#   numberOfFailedFiles - SOAP::SOAPInt
		#   numberOfInProcessFiles - SOAP::SOAPInt
		#   overallProgressPercent - SOAP::SOAPInt
		class FileProgressData
		  attr_accessor :numberOfAvailableFiles
		  attr_accessor :numberOfCanceledFiles
		  attr_accessor :numberOfCompletedFiles
		  attr_accessor :numberOfDeliveredFiles
		  attr_accessor :numberOfFailedFiles
		  attr_accessor :numberOfInProcessFiles
		  attr_accessor :overallProgressPercent

		  def initialize(numberOfAvailableFiles = nil, numberOfCanceledFiles = nil, numberOfCompletedFiles = nil, numberOfDeliveredFiles = nil, numberOfFailedFiles = nil, numberOfInProcessFiles = nil, overallProgressPercent = nil)
			@numberOfAvailableFiles = numberOfAvailableFiles
			@numberOfCanceledFiles = numberOfCanceledFiles
			@numberOfCompletedFiles = numberOfCompletedFiles
			@numberOfDeliveredFiles = numberOfDeliveredFiles
			@numberOfFailedFiles = numberOfFailedFiles
			@numberOfInProcessFiles = numberOfInProcessFiles
			@overallProgressPercent = overallProgressPercent
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}FuzzyTmStatistics
		#   fuzzyName - SOAP::SOAPString
		#   wordCount - SOAP::SOAPInt
		class FuzzyTmStatistics
		  attr_accessor :fuzzyName
		  attr_accessor :wordCount

		  def initialize(fuzzyName = nil, wordCount = nil)
			@fuzzyName = fuzzyName
			@wordCount = wordCount
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ItemFolderEnum
		#   value - SOAP::SOAPInt
		class ItemFolderEnum
		  attr_accessor :value

		  def initialize(value = nil)
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ItemStatusEnum
		#   name - SOAP::SOAPString
		#   value - SOAP::SOAPInt
		class ItemStatusEnum
		  attr_accessor :name
		  attr_accessor :value

		  def initialize(name = nil, value = nil)
			@name = name
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Metadata
		#   key - SOAP::SOAPString
		#   value - SOAP::SOAPString
		class Metadata
		  attr_accessor :key
		  attr_accessor :value

		  def initialize(key = nil, value = nil)
			@key = key
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Language
		#   locale - SOAP::SOAPString
		#   value - SOAP::SOAPString
		class Language
		  attr_accessor :locale
		  attr_accessor :value

		  def initialize(locale = nil, value = nil)
			@locale = locale
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}LanguageDirection
		#   sourceLanguage - Language
		#   targetLanguage - Language
		class LanguageDirection
		  attr_accessor :sourceLanguage
		  attr_accessor :targetLanguage

		  def initialize(sourceLanguage = nil, targetLanguage = nil)
			@sourceLanguage = sourceLanguage
			@targetLanguage = targetLanguage
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}LanguageDirectionModel
		#   dateCompleted - Date
		#   fileCount - SOAP::SOAPLong
		#   fileFormatProgressData - FileFormatProgressData
		#   fileProgress - FileProgressData
		#   sourceLanguage - Language
		#   targetLanguage - Language
		#   workflowDueDate - Date
		#   workflowStatus - SOAP::SOAPString
		class LanguageDirectionModel
		  attr_accessor :dateCompleted
		  attr_accessor :fileCount
		  attr_accessor :fileFormatProgressData
		  attr_accessor :fileProgress
		  attr_accessor :sourceLanguage
		  attr_accessor :targetLanguage
		  attr_accessor :workflowDueDate
		  attr_accessor :workflowStatus

		  def initialize(dateCompleted = nil, fileCount = nil, fileFormatProgressData = [], fileProgress = nil, sourceLanguage = nil, targetLanguage = nil, workflowDueDate = nil, workflowStatus = nil)
			@dateCompleted = dateCompleted
			@fileCount = fileCount
			@fileFormatProgressData = fileFormatProgressData
			@fileProgress = fileProgress
			@sourceLanguage = sourceLanguage
			@targetLanguage = targetLanguage
			@workflowDueDate = workflowDueDate
			@workflowStatus = workflowStatus
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Organization
		#   availableTasks - SOAP::SOAPInteger
		#   parentOrganization - Organization
		#   organizationInfo - OrganizationInfo
		#   tasks - Task
		#   ticket - SOAP::SOAPString
		class Organization
		  attr_accessor :availableTasks
		  attr_accessor :parentOrganization
		  attr_accessor :organizationInfo
		  attr_accessor :tasks
		  attr_accessor :ticket

		  def initialize(availableTasks = nil, parentOrganization = nil, organizationInfo = nil, tasks = [], ticket = nil)
			@availableTasks = availableTasks
			@parentOrganization = parentOrganization
			@organizationInfo = organizationInfo
			@tasks = tasks
			@ticket = ticket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}OrganizationInfo
		#   name - SOAP::SOAPString
		#   ticket - SOAP::SOAPString
		#   currencyCode - SOAP::SOAPString
		#   domain - SOAP::SOAPString
		#   theme - SOAP::SOAPString
		#   enabled - SOAP::SOAPBoolean
		class OrganizationInfo
		  attr_accessor :name
		  attr_accessor :ticket
		  attr_accessor :currencyCode
		  attr_accessor :domain
		  attr_accessor :theme
		  attr_accessor :enabled

		  def initialize(name = nil, ticket = nil, currencyCode = nil, domain = nil, theme = nil, enabled = nil)
			@name = name
			@ticket = ticket
			@currencyCode = currencyCode
			@domain = domain
			@theme = theme
			@enabled = enabled
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}PagedListInfo
		#   index - SOAP::SOAPInt
		#   indexesSize - SOAP::SOAPInt
		#   size - SOAP::SOAPInt
		#   sortDirection - SOAP::SOAPString
		#   sortProperty - SOAP::SOAPString
		class PagedListInfo
		  attr_accessor :index
		  attr_accessor :indexesSize
		  attr_accessor :size
		  attr_accessor :sortDirection
		  attr_accessor :sortProperty

		  def initialize(index = nil, indexesSize = nil, size = nil, sortDirection = nil, sortProperty = nil)
			@index = index
			@indexesSize = indexesSize
			@size = size
			@sortDirection = sortDirection
			@sortProperty = sortProperty
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Phase
		#   dateEnded - Date
		#   dueDate - Date
		#   name - SOAP::SOAPString
		#   status - ItemStatusEnum
		class Phase
		  attr_accessor :dateEnded
		  attr_accessor :dueDate
		  attr_accessor :name
		  attr_accessor :status

		  def initialize(dateEnded = nil, dueDate = nil, name = nil, status = nil)
			@dateEnded = dateEnded
			@dueDate = dueDate
			@name = name
			@status = status
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}PreviewResult
		#   message - SOAP::SOAPString
		#   repositoryItem - RepositoryItem
		class PreviewResult
		  attr_accessor :message
		  attr_accessor :repositoryItem

		  def initialize(message = nil, repositoryItem = nil)
			@message = message
			@repositoryItem = repositoryItem
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Priority
		#   name - SOAP::SOAPString
		#   value - SOAP::SOAPInt
		class Priority
		  attr_accessor :name
		  attr_accessor :value

		  def initialize(name = nil, value = nil)
			@name = name
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Project
		#   announcements - Announcement
		#   contentMonitorPluginInfo - ContentMonitorPluginInfo
		#   defaultTargetWorkflowDefinition - WorkflowDefinition
		#   defaultTargetWorkflowDefinitionTicket - SOAP::SOAPString
		#   fileFormatProfiles - FileFormatProfile
		#   includeSubmissionNameInLocalizationKit - SOAP::SOAPBoolean
		#   metadata - Metadata
		#   organizationName - SOAP::SOAPString
		#   projectCustomFieldConfiguration - ProjectCustomFieldConfiguration
		#   projectInfo - ProjectInfo
		#   projectLanguageDirections - ProjectLanguageDirection
		#   ticket - SOAP::SOAPString
		#   workflowDefinitions - WorkflowDefinition
		class Project
		  attr_accessor :announcements
		  attr_accessor :contentMonitorPluginInfo
		  attr_accessor :defaultTargetWorkflowDefinition
		  attr_accessor :defaultTargetWorkflowDefinitionTicket
		  attr_accessor :fileFormatProfiles
		  attr_accessor :includeSubmissionNameInLocalizationKit
		  attr_accessor :metadata
		  attr_accessor :organizationName
		  attr_accessor :projectCustomFieldConfiguration
		  attr_accessor :projectInfo
		  attr_accessor :projectLanguageDirections
		  attr_accessor :ticket
		  attr_accessor :workflowDefinitions

		  def initialize(announcements = [], contentMonitorPluginInfo = nil, defaultTargetWorkflowDefinition = nil, defaultTargetWorkflowDefinitionTicket = nil, fileFormatProfiles = [], includeSubmissionNameInLocalizationKit = [], metadata = [], organizationName = nil, projectCustomFieldConfiguration = [], projectInfo = nil, projectLanguageDirections = [], ticket = nil, workflowDefinitions = [])
			@announcements = announcements
			@contentMonitorPluginInfo = contentMonitorPluginInfo
			@defaultTargetWorkflowDefinition = defaultTargetWorkflowDefinition
			@defaultTargetWorkflowDefinitionTicket = defaultTargetWorkflowDefinitionTicket
			@fileFormatProfiles = fileFormatProfiles
			@includeSubmissionNameInLocalizationKit = includeSubmissionNameInLocalizationKit
			@metadata = metadata
			@organizationName = organizationName
			@projectCustomFieldConfiguration = projectCustomFieldConfiguration
			@projectInfo = projectInfo
			@projectLanguageDirections = projectLanguageDirections
			@ticket = ticket
			@workflowDefinitions = workflowDefinitions
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ProjectInfo
		#   clientIdentifier - SOAP::SOAPString
		#   defaultJobWorkflowDefinitionTicket - SOAP::SOAPString
		#   defaultSubmissionWorkflowDefinitionTicket - SOAP::SOAPString
		#   defaultTargetWorkflowDefinitionTicket - SOAP::SOAPString
		#   enabled - SOAP::SOAPBoolean
		#   name - SOAP::SOAPString
		#   shortCode - SOAP::SOAPString
		class ProjectInfo
		  attr_accessor :clientIdentifier
		  attr_accessor :defaultJobWorkflowDefinitionTicket
		  attr_accessor :defaultSubmissionWorkflowDefinitionTicket
		  attr_accessor :defaultTargetWorkflowDefinitionTicket
		  attr_accessor :enabled
		  attr_accessor :name
		  attr_accessor :shortCode

		  def initialize(clientIdentifier = nil, defaultJobWorkflowDefinitionTicket = nil, defaultSubmissionWorkflowDefinitionTicket = nil, defaultTargetWorkflowDefinitionTicket = nil, enabled = nil, name = nil, shortCode = nil)
			@clientIdentifier = clientIdentifier
			@defaultJobWorkflowDefinitionTicket = defaultJobWorkflowDefinitionTicket
			@defaultSubmissionWorkflowDefinitionTicket = defaultSubmissionWorkflowDefinitionTicket
			@defaultTargetWorkflowDefinitionTicket = defaultTargetWorkflowDefinitionTicket
			@enabled = enabled
			@name = name
			@shortCode = shortCode
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ProjectLanguage
		#   customLocaleCode - SOAP::SOAPString
		#   localeCode - SOAP::SOAPString
		class ProjectLanguage
		  attr_accessor :customLocaleCode
		  attr_accessor :localeCode

		  def initialize(customLocaleCode = nil, localeCode = nil)
			@customLocaleCode = customLocaleCode
			@localeCode = localeCode
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ProjectLanguageDirection
		#   sourceLanguage - Language
		#   targetLanguage - Language
		#   default - SOAP::SOAPBoolean
		#   frequent - SOAP::SOAPBoolean
		class ProjectLanguageDirection
		  attr_accessor :sourceLanguage
		  attr_accessor :targetLanguage
		  attr_accessor :default
		  attr_accessor :frequent

		  def initialize(sourceLanguage = nil, targetLanguage = nil, default = nil, frequent = nil)
			@sourceLanguage = sourceLanguage
			@targetLanguage = targetLanguage
			@default = default
			@frequent = frequent
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ProjectAClient
		#   enabled - SOAP::SOAPBoolean
		#   name - SOAP::SOAPString
		#   parentOrganization - Organization
		#   ticket - SOAP::SOAPString
		class ProjectAClient
		  attr_accessor :enabled
		  attr_accessor :name
		  attr_accessor :parentOrganization
		  attr_accessor :ticket

		  def initialize(enabled = nil, name = nil, parentOrganization = nil, ticket = nil)
			@enabled = enabled
			@name = name
			@parentOrganization = parentOrganization
			@ticket = ticket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}RepositoryItem
		#   data - Base64Binary
		#   resourceInfo - ResourceInfo
		class RepositoryItem
		  attr_accessor :data
		  attr_accessor :resourceInfo

		  def initialize(data = nil, resourceInfo = nil)
			@data = data
			@resourceInfo = resourceInfo
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ResourceInfo
		#   classifier - SOAP::SOAPString
		#   clientIdentifier - SOAP::SOAPString
		#   description - SOAP::SOAPString
		#   encoding - SOAP::SOAPString
		#   md5Checksum - SOAP::SOAPString
		#   mimeType - SOAP::SOAPString
		#   name - SOAP::SOAPString
		#   path - SOAP::SOAPString
		#   resourceInfoId - SOAP::SOAPLong
		#   size - SOAP::SOAPLong
		#   type - ResourceType
		class ResourceInfo
		  attr_accessor :classifier
		  attr_accessor :clientIdentifier
		  attr_accessor :description
		  attr_accessor :encoding
		  attr_accessor :md5Checksum
		  attr_accessor :mimeType
		  attr_accessor :name
		  attr_accessor :path
		  attr_accessor :resourceInfoId
		  attr_accessor :size
		  attr_accessor :type

		  def initialize(classifier = nil, clientIdentifier = nil, description = nil, encoding = nil, md5Checksum = nil, mimeType = nil, name = nil, path = nil, resourceInfoId = nil, size = nil, type = nil)
			@classifier = classifier
			@clientIdentifier = clientIdentifier
			@description = description
			@encoding = encoding
			@md5Checksum = md5Checksum
			@mimeType = mimeType
			@name = name
			@path = path
			@resourceInfoId = resourceInfoId
			@size = size
			@type = type
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ResourceType
		#   value - SOAP::SOAPInt
		class ResourceType
		  attr_accessor :value

		  def initialize(value = nil)
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Submission
		#   alerts - Notification
		#   availableTasks - SOAP::SOAPInt
		#   dateArchived - Date
		#   dateCompleted - Date
		#   dateCreated - Date
		#   dateEstimated - Date
		#   documents - Document
		#   dueDate - Date
		#   id - SOAP::SOAPString
		#   owner - SOAP::SOAPString
		#   project - Project
		#   status - ItemStatusEnum
		#   submissionInfo - SubmissionInfo
		#   submitterFullNames - SOAP::SOAPString
		#   ticket - SOAP::SOAPString
		#   workflowDefinition - WorkflowDefinition
		class Submission
		  attr_accessor :alerts
		  attr_accessor :availableTasks
		  attr_accessor :dateArchived
		  attr_accessor :dateCompleted
		  attr_accessor :dateCreated
		  attr_accessor :dateEstimated
		  attr_accessor :documents
		  attr_accessor :dueDate
		  attr_accessor :id
		  attr_accessor :owner
		  attr_accessor :project
		  attr_accessor :status
		  attr_accessor :submissionInfo
		  attr_accessor :submitterFullNames
		  attr_accessor :ticket
		  attr_accessor :workflowDefinition

		  def initialize(alerts = [], availableTasks = nil, dateArchived = nil, dateCompleted = nil, dateCreated = nil, dateEstimated = nil, documents = [], dueDate = nil, id = nil, owner = nil, project = nil, status = nil, submissionInfo = nil, submitterFullNames = [], ticket = nil, workflowDefinition = nil)
			@alerts = alerts
			@availableTasks = availableTasks
			@dateArchived = dateArchived
			@dateCompleted = dateCompleted
			@dateCreated = dateCreated
			@dateEstimated = dateEstimated
			@documents = documents
			@dueDate = dueDate
			@id = id
			@owner = owner
			@project = project
			@status = status
			@submissionInfo = submissionInfo
			@submitterFullNames = submitterFullNames
			@ticket = ticket
			@workflowDefinition = workflowDefinition
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}SubmissionInfo
		#   additionalCosts - SOAP::SOAPString
		#   autoStartChilds - SOAP::SOAPBoolean
		#   claimScope - ClaimScopeEnum
		#   clientIdentifier - SOAP::SOAPString
		#   dateRequested - Date
		#   internalNotes - SOAP::SOAPString
		#   metadata - Metadata
		#   name - SOAP::SOAPString
		#   officeName - SOAP::SOAPString
		#   paClientTicket - SOAP::SOAPString
		#   paJobNumber - SOAP::SOAPString
		#   priority - Priority
		#   projectTicket - SOAP::SOAPString
		#   revenue - SOAP::SOAPDouble
		#   submissionBackground - SOAP::SOAPString
		#   submissionCustomFields - SubmissionCustomFields
		#   submitters - SOAP::SOAPString
		#   workflowDefinitionTicket - SOAP::SOAPString
		class SubmissionInfo
		  attr_accessor :additionalCosts
		  attr_accessor :autoStartChilds
		  attr_accessor :claimScope
		  attr_accessor :clientIdentifier
		  attr_accessor :dateRequested
		  attr_accessor :internalNotes
		  attr_accessor :metadata
		  attr_accessor :name
		  attr_accessor :officeName
		  attr_accessor :paClientTicket
		  attr_accessor :paJobNumber
		  attr_accessor :priority
		  attr_accessor :projectTicket
		  attr_accessor :revenue
		  attr_accessor :submissionBackground
		  attr_accessor :submissionCustomFields
		  attr_accessor :submitters
		  attr_accessor :workflowDefinitionTicket

		  def initialize(additionalCosts = nil, autoStartChilds = nil, claimScope = nil, clientIdentifier = nil, dateRequested = nil, internalNotes = nil, metadata = [], name = nil, officeName = nil, paClientTicket = nil, paJobNumber = nil, priority = nil, projectTicket = nil, revenue = nil, submissionBackground = nil, submissionCustomFields = [], submitters = [], workflowDefinitionTicket = nil)
			@additionalCosts = additionalCosts
			@autoStartChilds = autoStartChilds
			@claimScope = claimScope
			@clientIdentifier = clientIdentifier
			@dateRequested = dateRequested
			@internalNotes = internalNotes
			@metadata = metadata
			@name = name
			@officeName = officeName
			@paClientTicket = paClientTicket
			@paJobNumber = paJobNumber
			@priority = priority
			@projectTicket = projectTicket
			@revenue = revenue
			@submissionBackground = submissionBackground
			@submissionCustomFields = submissionCustomFields
			@submitters = submitters
			@workflowDefinitionTicket = workflowDefinitionTicket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}SubmissionPagedList
		#   elements - Submission
		#   pagedListInfo - PagedListInfo
		#   tasks - Task
		#   totalCount - SOAP::SOAPLong
		class SubmissionPagedList
		  attr_accessor :elements
		  attr_accessor :pagedListInfo
		  attr_accessor :tasks
		  attr_accessor :totalCount

		  def initialize(elements = [], pagedListInfo = nil, tasks = [], totalCount = nil)
			@elements = elements
			@pagedListInfo = pagedListInfo
			@tasks = tasks
			@totalCount = totalCount
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}SimpleSubmissionSearchModel
		#   alerts - Notification
		#   availableTasks - SOAP::SOAPLong
		#   budgetStatus - SOAP::SOAPInt
		#   claimScope - ClaimScopeEnum
		#   customFields - SOAP::SOAPString
		#   date - Date
		#   dateArchived - Date
		#   dateCompleted - Date
		#   dateStarted - Date
		#   dueDate - Date
		#   fileCount - SOAP::SOAPLong
		#   fileProgress - FileProgressData
		#   gate - SOAP::SOAPByte
		#   id - SOAP::SOAPString
		#   instructions - SOAP::SOAPString
		#   officeName - SOAP::SOAPString
		#   owner - UserData
		#   paClientName - SOAP::SOAPString
		#   parentSubmissionName - SOAP::SOAPString
		#   parentTicket - SOAP::SOAPString
		#   pmNotes - SOAP::SOAPString
		#   priority - SOAP::SOAPString
		#   projectName - SOAP::SOAPString
		#   projectTicket - SOAP::SOAPString
		#   quote - SOAP::SOAPByte
		#   reserved - SOAP::SOAPBoolean
		#   sourceLanguage - SOAP::SOAPString
		#   status - ItemStatusEnum
		#   submissionBackground - SOAP::SOAPString
		#   submissionName - SOAP::SOAPString
		#   submitterFullName - UserData
		#   ticket - SOAP::SOAPString
		#   wordCount - SOAP::SOAPLong
		#   workflowDueDate - Date
		#   workflowStatus - SOAP::SOAPString
		class SimpleSubmissionSearchModel
		  attr_accessor :alerts
		  attr_accessor :availableTasks
		  attr_accessor :budgetStatus
		  attr_accessor :claimScope
		  attr_accessor :customFields
		  attr_accessor :date
		  attr_accessor :dateArchived
		  attr_accessor :dateCompleted
		  attr_accessor :dateStarted
		  attr_accessor :dueDate
		  attr_accessor :fileCount
		  attr_accessor :fileProgress
		  attr_accessor :gate
		  attr_accessor :id
		  attr_accessor :instructions
		  attr_accessor :officeName
		  attr_accessor :owner
		  attr_accessor :paClientName
		  attr_accessor :parentSubmissionName
		  attr_accessor :parentTicket
		  attr_accessor :pmNotes
		  attr_accessor :priority
		  attr_accessor :projectName
		  attr_accessor :projectTicket
		  attr_accessor :quote
		  attr_accessor :reserved
		  attr_accessor :sourceLanguage
		  attr_accessor :status
		  attr_accessor :submissionBackground
		  attr_accessor :submissionName
		  attr_accessor :submitterFullName
		  attr_accessor :ticket
		  attr_accessor :wordCount
		  attr_accessor :workflowDueDate
		  attr_accessor :workflowStatus

		  def initialize(alerts = [], availableTasks = nil, budgetStatus = nil, claimScope = nil, customFields = [], date = nil, dateArchived = nil, dateCompleted = nil, dateStarted = nil, dueDate = nil, fileCount = nil, fileProgress = nil, gate = nil, id = nil, instructions = nil, officeName = nil, owner = [], paClientName = nil, parentSubmissionName = nil, parentTicket = nil, pmNotes = nil, priority = nil, projectName = nil, projectTicket = nil, quote = nil, reserved = nil, sourceLanguage = nil, status = nil, submissionBackground = nil, submissionName = nil, submitterFullName = [], ticket = nil, wordCount = nil, workflowDueDate = nil, workflowStatus = nil)
			@alerts = alerts
			@availableTasks = availableTasks
			@budgetStatus = budgetStatus
			@claimScope = claimScope
			@customFields = customFields
			@date = date
			@dateArchived = dateArchived
			@dateCompleted = dateCompleted
			@dateStarted = dateStarted
			@dueDate = dueDate
			@fileCount = fileCount
			@fileProgress = fileProgress
			@gate = gate
			@id = id
			@instructions = instructions
			@officeName = officeName
			@owner = owner
			@paClientName = paClientName
			@parentSubmissionName = parentSubmissionName
			@parentTicket = parentTicket
			@pmNotes = pmNotes
			@priority = priority
			@projectName = projectName
			@projectTicket = projectTicket
			@quote = quote
			@reserved = reserved
			@sourceLanguage = sourceLanguage
			@status = status
			@submissionBackground = submissionBackground
			@submissionName = submissionName
			@submitterFullName = submitterFullName
			@ticket = ticket
			@wordCount = wordCount
			@workflowDueDate = workflowDueDate
			@workflowStatus = workflowStatus
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}SubmissionSearchModelPagedList
		#   elements - SimpleSubmissionSearchModel
		#   pagedListInfo - PagedListInfo
		#   tasks - Task
		#   totalCount - SOAP::SOAPLong
		class SubmissionSearchModelPagedList
		  attr_accessor :elements
		  attr_accessor :pagedListInfo
		  attr_accessor :tasks
		  attr_accessor :totalCount

		  def initialize(elements = [], pagedListInfo = nil, tasks = [], totalCount = nil)
			@elements = elements
			@pagedListInfo = pagedListInfo
			@tasks = tasks
			@totalCount = totalCount
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}SubmissionSearchRequest
		#   folder - ItemFolderEnum
		#   projectTickets - SOAP::SOAPString
		#   submissionDate - Date
		#   submissionDueDate - Date
		#   submissionName - SOAP::SOAPString
		class SubmissionSearchRequest
		  attr_accessor :folder
		  attr_accessor :projectTickets
		  attr_accessor :submissionDate
		  attr_accessor :submissionDueDate
		  attr_accessor :submissionName

		  def initialize(folder = nil, projectTickets = [], submissionDate = nil, submissionDueDate = nil, submissionName = nil)
			@folder = folder
			@projectTickets = projectTickets
			@submissionDate = submissionDate
			@submissionDueDate = submissionDueDate
			@submissionName = submissionName
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Target
		#   availableTasks - SOAP::SOAPLong
		#   dateCompleted - Date
		#   dateCreated - Date
		#   dateEstimated - Date
		#   document - Document
		#   downloadThresholdTimeStamp - Date
		#   dueDate - Date
		#   fileName - SOAP::SOAPString
		#   id - SOAP::SOAPString
		#   phases - Phase
		#   refPhase - Phase
		#   sourceLanguage - Language
		#   sourceWordCount - SOAP::SOAPInt
		#   status - ItemStatusEnum
		#   targetInfo - TargetInfo
		#   targetLanguage - Language
		#   targetWordCount - SOAP::SOAPInt
		#   ticket - SOAP::SOAPString
		#   tmStatistics - TmStatistics
		#   workflowDefinition - WorkflowDefinition
		class Target
		  attr_accessor :availableTasks
		  attr_accessor :dateCompleted
		  attr_accessor :dateCreated
		  attr_accessor :dateEstimated
		  attr_accessor :document
		  attr_accessor :downloadThresholdTimeStamp
		  attr_accessor :dueDate
		  attr_accessor :fileName
		  attr_accessor :id
		  attr_accessor :phases
		  attr_accessor :refPhase
		  attr_accessor :sourceLanguage
		  attr_accessor :sourceWordCount
		  attr_accessor :status
		  attr_accessor :targetInfo
		  attr_accessor :targetLanguage
		  attr_accessor :targetWordCount
		  attr_accessor :ticket
		  attr_accessor :tmStatistics
		  attr_accessor :workflowDefinition

		  def initialize(availableTasks = nil, dateCompleted = nil, dateCreated = nil, dateEstimated = nil, document = nil, downloadThresholdTimeStamp = nil, dueDate = nil, fileName = nil, id = nil, phases = [], refPhase = nil, sourceLanguage = nil, sourceWordCount = nil, status = nil, targetInfo = nil, targetLanguage = nil, targetWordCount = nil, ticket = nil, tmStatistics = nil, workflowDefinition = nil)
			@availableTasks = availableTasks
			@dateCompleted = dateCompleted
			@dateCreated = dateCreated
			@dateEstimated = dateEstimated
			@document = document
			@downloadThresholdTimeStamp = downloadThresholdTimeStamp
			@dueDate = dueDate
			@fileName = fileName
			@id = id
			@phases = phases
			@refPhase = refPhase
			@sourceLanguage = sourceLanguage
			@sourceWordCount = sourceWordCount
			@status = status
			@targetInfo = targetInfo
			@targetLanguage = targetLanguage
			@targetWordCount = targetWordCount
			@ticket = ticket
			@tmStatistics = tmStatistics
			@workflowDefinition = workflowDefinition
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}TargetInfo
		#   dateRequested - Date
		#   encoding - SOAP::SOAPString
		#   instructions - SOAP::SOAPString
		#   metadata - Metadata
		#   priority - Priority
		#   requestedDueDate - SOAP::SOAPLong
		#   targetLocale - SOAP::SOAPString
		#   workflowDefinitionTicket - SOAP::SOAPString
		class TargetInfo
		  attr_accessor :dateRequested
		  attr_accessor :encoding
		  attr_accessor :instructions
		  attr_accessor :metadata
		  attr_accessor :priority
		  attr_accessor :requestedDueDate
		  attr_accessor :targetLocale
		  attr_accessor :workflowDefinitionTicket

		  def initialize(dateRequested = nil, encoding = nil, instructions = nil, metadata = [], priority = nil, requestedDueDate = nil, targetLocale = nil, workflowDefinitionTicket = nil)
			@dateRequested = dateRequested
			@encoding = encoding
			@instructions = instructions
			@metadata = metadata
			@priority = priority
			@requestedDueDate = requestedDueDate
			@targetLocale = targetLocale
			@workflowDefinitionTicket = workflowDefinitionTicket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}TargetPagedList
		#   elements - Target
		#   pagedListInfo - PagedListInfo
		#   tasks - Task
		#   totalCount - SOAP::SOAPLong
		class TargetPagedList
		  attr_accessor :elements
		  attr_accessor :pagedListInfo
		  attr_accessor :tasks
		  attr_accessor :totalCount

		  def initialize(elements = [], pagedListInfo = nil, tasks = [], totalCount = nil)
			@elements = elements
			@pagedListInfo = pagedListInfo
			@tasks = tasks
			@totalCount = totalCount
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}TargetSearchRequest
		#   dateCreated - Date
		#   folder - ItemFolderEnum
		#   projectTickets - SOAP::SOAPString
		#   sourceLocaleId - SOAP::SOAPString
		#   submissionTicket - SOAP::SOAPString
		#   targetLocaleId - SOAP::SOAPString
		class TargetSearchRequest
		  attr_accessor :dateCreated
		  attr_accessor :folder
		  attr_accessor :projectTickets
		  attr_accessor :sourceLocaleId
		  attr_accessor :submissionTicket
		  attr_accessor :targetLocaleId

		  def initialize(dateCreated = nil, folder = nil, projectTickets = [], sourceLocaleId = nil, submissionTicket = nil, targetLocaleId = nil)
			@dateCreated = dateCreated
			@folder = folder
			@projectTickets = projectTickets
			@sourceLocaleId = sourceLocaleId
			@submissionTicket = submissionTicket
			@targetLocaleId = targetLocaleId
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Task
		#   groupName - SOAP::SOAPString
		#   selectStyle - SOAP::SOAPInt
		#   taskId - SOAP::SOAPInt
		#   taskName - SOAP::SOAPString
		#   weight - SOAP::SOAPInt
		class Task
		  attr_accessor :groupName
		  attr_accessor :selectStyle
		  attr_accessor :taskId
		  attr_accessor :taskName
		  attr_accessor :weight

		  def initialize(groupName = nil, selectStyle = nil, taskId = nil, taskName = nil, weight = nil)
			@groupName = groupName
			@selectStyle = selectStyle
			@taskId = taskId
			@taskName = taskName
			@weight = weight
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}TmStatistics
		#   fuzzyRepetitionsWordCount1 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount10 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount2 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount3 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount4 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount5 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount6 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount7 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount8 - FuzzyTmStatistics
		#   fuzzyRepetitionsWordCount9 - FuzzyTmStatistics
		#   fuzzyWordCount1 - FuzzyTmStatistics
		#   fuzzyWordCount10 - FuzzyTmStatistics
		#   fuzzyWordCount2 - FuzzyTmStatistics
		#   fuzzyWordCount3 - FuzzyTmStatistics
		#   fuzzyWordCount4 - FuzzyTmStatistics
		#   fuzzyWordCount5 - FuzzyTmStatistics
		#   fuzzyWordCount6 - FuzzyTmStatistics
		#   fuzzyWordCount7 - FuzzyTmStatistics
		#   fuzzyWordCount8 - FuzzyTmStatistics
		#   fuzzyWordCount9 - FuzzyTmStatistics
		#   goldWordCount - SOAP::SOAPInt
		#   noMatchWordCount - SOAP::SOAPInt
		#   oneHundredMatchWordCount - SOAP::SOAPInt
		#   repetitionWordCount - SOAP::SOAPInt
		#   totalWordCount - SOAP::SOAPInt
		class TmStatistics
		  attr_accessor :fuzzyRepetitionsWordCount1
		  attr_accessor :fuzzyRepetitionsWordCount10
		  attr_accessor :fuzzyRepetitionsWordCount2
		  attr_accessor :fuzzyRepetitionsWordCount3
		  attr_accessor :fuzzyRepetitionsWordCount4
		  attr_accessor :fuzzyRepetitionsWordCount5
		  attr_accessor :fuzzyRepetitionsWordCount6
		  attr_accessor :fuzzyRepetitionsWordCount7
		  attr_accessor :fuzzyRepetitionsWordCount8
		  attr_accessor :fuzzyRepetitionsWordCount9
		  attr_accessor :fuzzyWordCount1
		  attr_accessor :fuzzyWordCount10
		  attr_accessor :fuzzyWordCount2
		  attr_accessor :fuzzyWordCount3
		  attr_accessor :fuzzyWordCount4
		  attr_accessor :fuzzyWordCount5
		  attr_accessor :fuzzyWordCount6
		  attr_accessor :fuzzyWordCount7
		  attr_accessor :fuzzyWordCount8
		  attr_accessor :fuzzyWordCount9
		  attr_accessor :goldWordCount
		  attr_accessor :noMatchWordCount
		  attr_accessor :oneHundredMatchWordCount
		  attr_accessor :repetitionWordCount
		  attr_accessor :totalWordCount

		  def initialize(fuzzyRepetitionsWordCount1 = nil, fuzzyRepetitionsWordCount10 = nil, fuzzyRepetitionsWordCount2 = nil, fuzzyRepetitionsWordCount3 = nil, fuzzyRepetitionsWordCount4 = nil, fuzzyRepetitionsWordCount5 = nil, fuzzyRepetitionsWordCount6 = nil, fuzzyRepetitionsWordCount7 = nil, fuzzyRepetitionsWordCount8 = nil, fuzzyRepetitionsWordCount9 = nil, fuzzyWordCount1 = nil, fuzzyWordCount10 = nil, fuzzyWordCount2 = nil, fuzzyWordCount3 = nil, fuzzyWordCount4 = nil, fuzzyWordCount5 = nil, fuzzyWordCount6 = nil, fuzzyWordCount7 = nil, fuzzyWordCount8 = nil, fuzzyWordCount9 = nil, goldWordCount = nil, noMatchWordCount = nil, oneHundredMatchWordCount = nil, repetitionWordCount = nil, totalWordCount = nil)
			@fuzzyRepetitionsWordCount1 = fuzzyRepetitionsWordCount1
			@fuzzyRepetitionsWordCount10 = fuzzyRepetitionsWordCount10
			@fuzzyRepetitionsWordCount2 = fuzzyRepetitionsWordCount2
			@fuzzyRepetitionsWordCount3 = fuzzyRepetitionsWordCount3
			@fuzzyRepetitionsWordCount4 = fuzzyRepetitionsWordCount4
			@fuzzyRepetitionsWordCount5 = fuzzyRepetitionsWordCount5
			@fuzzyRepetitionsWordCount6 = fuzzyRepetitionsWordCount6
			@fuzzyRepetitionsWordCount7 = fuzzyRepetitionsWordCount7
			@fuzzyRepetitionsWordCount8 = fuzzyRepetitionsWordCount8
			@fuzzyRepetitionsWordCount9 = fuzzyRepetitionsWordCount9
			@fuzzyWordCount1 = fuzzyWordCount1
			@fuzzyWordCount10 = fuzzyWordCount10
			@fuzzyWordCount2 = fuzzyWordCount2
			@fuzzyWordCount3 = fuzzyWordCount3
			@fuzzyWordCount4 = fuzzyWordCount4
			@fuzzyWordCount5 = fuzzyWordCount5
			@fuzzyWordCount6 = fuzzyWordCount6
			@fuzzyWordCount7 = fuzzyWordCount7
			@fuzzyWordCount8 = fuzzyWordCount8
			@fuzzyWordCount9 = fuzzyWordCount9
			@goldWordCount = goldWordCount
			@noMatchWordCount = noMatchWordCount
			@oneHundredMatchWordCount = oneHundredMatchWordCount
			@repetitionWordCount = repetitionWordCount
			@totalWordCount = totalWordCount
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}WorkflowDefinition
		#   description - SOAP::SOAPString
		#   name - SOAP::SOAPString
		#   ticket - SOAP::SOAPString
		#   type - EntityTypeEnum
		class WorkflowDefinition
		  attr_accessor :description
		  attr_accessor :name
		  attr_accessor :ticket
		  attr_accessor :type

		  def initialize(description = nil, name = nil, ticket = nil, type = nil)
			@description = description
			@name = name
			@ticket = ticket
			@type = type
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}UserData
		#   email - SOAP::SOAPString
		#   name - SOAP::SOAPString
		class UserData
		  attr_accessor :email
		  attr_accessor :name

		  def initialize(email = nil, name = nil)
			@email = email
			@name = name
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}UserInfo
		#   accountLocked - SOAP::SOAPBoolean
		#   accountNonExpired - SOAP::SOAPBoolean
		#   address - SOAP::SOAPString
		#   autoClaimMultipleTasks - SOAP::SOAPBoolean
		#   claimMultipleJobTasks - SOAP::SOAPBoolean
		#   credentialsNonExpired - SOAP::SOAPBoolean
		#   dateLastLogin - SOAP::SOAPDateTime
		#   department - SOAP::SOAPString
		#   emailAddress - SOAP::SOAPString
		#   emailNotification - SOAP::SOAPBoolean
		#   enabled - SOAP::SOAPBoolean
		#   fax - SOAP::SOAPString
		#   firstName - SOAP::SOAPString
		#   lastName - SOAP::SOAPString
		#   password - SOAP::SOAPString
		#   phone1 - SOAP::SOAPString
		#   phone2 - SOAP::SOAPString
		#   timeZone - SOAP::SOAPString
		#   userName - SOAP::SOAPString
		#   userType - SOAP::SOAPString
		class UserInfo
		  attr_accessor :accountLocked
		  attr_accessor :accountNonExpired
		  attr_accessor :address
		  attr_accessor :autoClaimMultipleTasks
		  attr_accessor :claimMultipleJobTasks
		  attr_accessor :credentialsNonExpired
		  attr_accessor :dateLastLogin
		  attr_accessor :department
		  attr_accessor :emailAddress
		  attr_accessor :emailNotification
		  attr_accessor :enabled
		  attr_accessor :fax
		  attr_accessor :firstName
		  attr_accessor :lastName
		  attr_accessor :password
		  attr_accessor :phone1
		  attr_accessor :phone2
		  attr_accessor :timeZone
		  attr_accessor :userName
		  attr_accessor :userType

		  def initialize(accountLocked = nil, accountNonExpired = nil, address = nil, autoClaimMultipleTasks = nil, claimMultipleJobTasks = nil, credentialsNonExpired = nil, dateLastLogin = nil, department = nil, emailAddress = nil, emailNotification = nil, enabled = nil, fax = nil, firstName = nil, lastName = nil, password = nil, phone1 = nil, phone2 = nil, timeZone = nil, userName = nil, userType = nil)
			@accountLocked = accountLocked
			@accountNonExpired = accountNonExpired
			@address = address
			@autoClaimMultipleTasks = autoClaimMultipleTasks
			@claimMultipleJobTasks = claimMultipleJobTasks
			@credentialsNonExpired = credentialsNonExpired
			@dateLastLogin = dateLastLogin
			@department = department
			@emailAddress = emailAddress
			@emailNotification = emailNotification
			@enabled = enabled
			@fax = fax
			@firstName = firstName
			@lastName = lastName
			@password = password
			@phone1 = phone1
			@phone2 = phone2
			@timeZone = timeZone
			@userName = userName
			@userType = userType
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}TiUserInfo
		#   languageDirections - LanguageDirection
		#   organizationId - SOAP::SOAPLong
		#   projectRoles - SOAP::SOAPString
		#   projectTicket - SOAP::SOAPString
		#   systemRoles - SOAP::SOAPString
		#   vendorId - SOAP::SOAPLong
		class TiUserInfo
		  attr_accessor :languageDirections
		  attr_accessor :organizationId
		  attr_accessor :projectRoles
		  attr_accessor :projectTicket
		  attr_accessor :systemRoles
		  attr_accessor :vendorId

		  def initialize(languageDirections = [], organizationId = nil, projectRoles = [], projectTicket = [], systemRoles = [], vendorId = nil)
			@languageDirections = languageDirections
			@organizationId = organizationId
			@projectRoles = projectRoles
			@projectTicket = projectTicket
			@systemRoles = systemRoles
			@vendorId = vendorId
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ClaimScopeEnum
		#   name - SOAP::SOAPString
		#   value - SOAP::SOAPInt
		class ClaimScopeEnum
		  attr_accessor :name
		  attr_accessor :value

		  def initialize(name = nil, value = nil)
			@name = name
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}ProjectCustomFieldConfiguration
		#   description - SOAP::SOAPString
		#   mandatory - SOAP::SOAPBoolean
		#   name - SOAP::SOAPString
		#   type - SOAP::SOAPString
		#   values - SOAP::SOAPString
		class ProjectCustomFieldConfiguration
		  attr_accessor :description
		  attr_accessor :mandatory
		  attr_accessor :name
		  attr_accessor :type
		  attr_accessor :values

		  def initialize(description = nil, mandatory = nil, name = nil, type = nil, values = nil)
			@description = description
			@mandatory = mandatory
			@name = name
			@type = type
			@values = values
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}SubmissionCustomFields
		#   fieldName - SOAP::SOAPString
		#   fieldValue - SOAP::SOAPString
		class SubmissionCustomFields
		  attr_accessor :fieldName
		  attr_accessor :fieldValue

		  def initialize(fieldName = nil, fieldValue = nil)
			@fieldName = fieldName
			@fieldValue = fieldValue
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}UserProfile
		#   availableTasks - SOAP::SOAPInt
		#   organizationName - SOAP::SOAPString
		#   systemRoles - Role
		#   tasks - Task
		#   ticket - SOAP::SOAPString
		#   userInfo - UserInfo
		#   vendorName - SOAP::SOAPString
		class UserProfile
		  attr_accessor :availableTasks
		  attr_accessor :organizationName
		  attr_accessor :systemRoles
		  attr_accessor :tasks
		  attr_accessor :ticket
		  attr_accessor :userInfo
		  attr_accessor :vendorName

		  def initialize(availableTasks = nil, organizationName = nil, systemRoles = [], tasks = [], ticket = nil, userInfo = nil, vendorName = nil)
			@availableTasks = availableTasks
			@organizationName = organizationName
			@systemRoles = systemRoles
			@tasks = tasks
			@ticket = ticket
			@userInfo = userInfo
			@vendorName = vendorName
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Role
		#   policies - Policy
		#   roleId - SOAP::SOAPString
		#   roleType - RoleTypeEnum
		#   tasks - Task
		#   ticket - SOAP::SOAPString
		class Role
		  attr_accessor :policies
		  attr_accessor :roleId
		  attr_accessor :roleType
		  attr_accessor :tasks
		  attr_accessor :ticket

		  def initialize(policies = [], roleId = nil, roleType = nil, tasks = [], ticket = nil)
			@policies = policies
			@roleId = roleId
			@roleType = roleType
			@tasks = tasks
			@ticket = ticket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}RoleTypeEnum
		#   value - SOAP::SOAPInt
		class RoleTypeEnum
		  attr_accessor :value

		  def initialize(value = nil)
			@value = value
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}Policy
		#   category - SOAP::SOAPString
		#   policyId - SOAP::SOAPString
		#   policyType - RoleTypeEnum
		class Policy
		  attr_accessor :category
		  attr_accessor :policyId
		  attr_accessor :policyType

		  def initialize(category = nil, policyId = nil, policyType = nil)
			@category = category
			@policyId = policyId
			@policyType = policyType
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}LanguageWorkflowInfo
		#   sourceLanguage - Language
		#   targetLanguage - Language
		class LanguageWorkflowInfo
		  attr_accessor :sourceLanguage
		  attr_accessor :targetLanguage

		  def initialize(sourceLanguage = nil, targetLanguage = nil)
			@sourceLanguage = sourceLanguage
			@targetLanguage = targetLanguage
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}BatchWorkflowInfo
		#   batchName - SOAP::SOAPString
		#   languageWorkflowInfo - LanguageWorkflowInfo
		class BatchWorkflowInfo
		  attr_accessor :batchName
		  attr_accessor :languageWorkflowInfo

		  def initialize(batchName = nil, languageWorkflowInfo = nil)
			@batchName = batchName
			@languageWorkflowInfo = languageWorkflowInfo
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}TargetWorkflowInfo
		#   batchName - SOAP::SOAPString
		#   documentName - SOAP::SOAPString
		#   fileName - SOAP::SOAPString
		#   sourceLanguage - Language
		#   targetLanguage - Language
		#   targetTicket - SOAP::SOAPString
		class TargetWorkflowInfo
		  attr_accessor :batchName
		  attr_accessor :documentName
		  attr_accessor :fileName
		  attr_accessor :sourceLanguage
		  attr_accessor :targetLanguage
		  attr_accessor :targetTicket

		  def initialize(batchName = nil, documentName = nil, fileName = nil, sourceLanguage = nil, targetLanguage = nil, targetTicket = nil)
			@batchName = batchName
			@documentName = documentName
			@fileName = fileName
			@sourceLanguage = sourceLanguage
			@targetLanguage = targetLanguage
			@targetTicket = targetTicket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}SubmissionWorkflowInfo
		#   batchWorkflowInfos - BatchWorkflowInfo
		#   languageWorkflowInfos - LanguageWorkflowInfo
		#   phaseName - SOAP::SOAPString
		#   submissionId - SOAP::SOAPLong
		#   submissionName - SOAP::SOAPString
		#   submissionTicket - SOAP::SOAPString
		#   targetWorkflowInfos - TargetWorkflowInfo
		class SubmissionWorkflowInfo
		  attr_accessor :batchWorkflowInfos
		  attr_accessor :languageWorkflowInfos
		  attr_accessor :phaseName
		  attr_accessor :submissionId
		  attr_accessor :submissionName
		  attr_accessor :submissionTicket
		  attr_accessor :targetWorkflowInfos

		  def initialize(batchWorkflowInfos = [], languageWorkflowInfos = [], phaseName = nil, submissionId = nil, submissionName = nil, submissionTicket = nil, targetWorkflowInfos = [])
			@batchWorkflowInfos = batchWorkflowInfos
			@languageWorkflowInfos = languageWorkflowInfos
			@phaseName = phaseName
			@submissionId = submissionId
			@submissionName = submissionName
			@submissionTicket = submissionTicket
			@targetWorkflowInfos = targetWorkflowInfos
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}WorkflowRequest
		#   batchWorkflowInfos - BatchWorkflowInfo
		#   languageWorkflowInfos - LanguageWorkflowInfo
		#   phaseName - SOAP::SOAPString
		#   submissionTicket - SOAP::SOAPString
		#   targetWorkflowInfos - TargetWorkflowInfo
		class WorkflowRequest
		  attr_accessor :batchWorkflowInfos
		  attr_accessor :languageWorkflowInfos
		  attr_accessor :phaseName
		  attr_accessor :submissionTicket
		  attr_accessor :targetWorkflowInfos

		  def initialize(batchWorkflowInfos = [], languageWorkflowInfos = [], phaseName = nil, submissionTicket = nil, targetWorkflowInfos = [])
			@batchWorkflowInfos = batchWorkflowInfos
			@languageWorkflowInfos = languageWorkflowInfos
			@phaseName = phaseName
			@submissionTicket = submissionTicket
			@targetWorkflowInfos = targetWorkflowInfos
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}WorkflowRequestTicket
		#   message - SOAP::SOAPString
		#   processTicket - SOAP::SOAPString
		#   submissionTicket - SOAP::SOAPString
		class WorkflowRequestTicket
		  attr_accessor :message
		  attr_accessor :processTicket
		  attr_accessor :submissionTicket

		  def initialize(message = nil, processTicket = nil, submissionTicket = nil)
			@message = message
			@processTicket = processTicket
			@submissionTicket = submissionTicket
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}DownloadActionResult
		#   message - SOAP::SOAPString
		#   processingFinished - SOAP::SOAPBoolean
		#   repositoryItem - RepositoryItem
		class DownloadActionResult
		  attr_accessor :message
		  attr_accessor :processingFinished
		  attr_accessor :repositoryItem

		  def initialize(message = nil, processingFinished = nil, repositoryItem = nil)
			@message = message
			@processingFinished = processingFinished
			@repositoryItem = repositoryItem
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}UploadActionResult
		#   messages - SOAP::SOAPString
		#   processingFinished - SOAP::SOAPBoolean
		class UploadActionResult
		  attr_accessor :messages
		  attr_accessor :processingFinished

		  def initialize(messages = [], processingFinished = nil)
			@messages = messages
			@processingFinished = processingFinished
		  end
		end

		# {http://dto.model.projectdirector.gs4tr.org/xsd}DownloadCollateralResult
		#   errorMessages - SOAP::SOAPString
		#   processingFinished - SOAP::SOAPBoolean
		#   repositoryItem - RepositoryItem
		class DownloadCollateralResult
		  attr_accessor :errorMessages
		  attr_accessor :processingFinished
		  attr_accessor :repositoryItem

		  def initialize(errorMessages = [], processingFinished = nil, repositoryItem = nil)
			@errorMessages = errorMessages
			@processingFinished = processingFinished
			@repositoryItem = repositoryItem
		  end
		end

		# {http://www.w3.org/2005/05/xmlmime}base64Binary
		#   xmlattr_contentType - SOAP::SOAPString
		class Base64Binary < ::String
		  AttrContentType = XSD::QName.new("http://www.w3.org/2005/05/xmlmime", "contentType")

		  def __xmlattr
			@__xmlattr ||= {}
		  end

		  def xmlattr_contentType
			__xmlattr[AttrContentType]
		  end

		  def xmlattr_contentType=(value)
			__xmlattr[AttrContentType] = value
		  end

		  def initialize(*arg)
			super
			@__xmlattr = {}
		  end
		end

		# {http://www.w3.org/2005/05/xmlmime}hexBinary
		#   xmlattr_contentType - SOAP::SOAPString
		class HexBinary < ::String
		  AttrContentType = XSD::QName.new("http://www.w3.org/2005/05/xmlmime", "contentType")

		  def __xmlattr
			@__xmlattr ||= {}
		  end

		  def xmlattr_contentType
			__xmlattr[AttrContentType]
		  end

		  def xmlattr_contentType=(value)
			__xmlattr[AttrContentType] = value
		  end

		  def initialize(*arg)
			super
			@__xmlattr = {}
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}cancelDocument
		#   documentTicket - DocumentTicket
		class CancelDocument
		  attr_accessor :documentTicket

		  def initialize(documentTicket = nil)
			@documentTicket = documentTicket
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}cancelDocumentResponse
		#   m_return - SOAP::SOAPString
		class CancelDocumentResponse
		  def m_return
			@v_return
		  end

		  def m_return=(value)
			@v_return = value
		  end

		  def initialize(v_return = nil)
			@v_return = v_return
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}findByTicket
		#   ticket - SOAP::SOAPString
		class FindByTicket
		  attr_accessor :ticket

		  def initialize(ticket = nil)
			@ticket = ticket
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}findByTicketResponse
		#   m_return - Document
		class FindByTicketResponse
		  def m_return
			@v_return
		  end

		  def m_return=(value)
			@v_return = value
		  end

		  def initialize(v_return = nil)
			@v_return = v_return
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}search
		#   command - DocumentSearchRequest
		#   info - PagedListInfo
		class Search
		  attr_accessor :command
		  attr_accessor :info

		  def initialize(command = nil, info = nil)
			@command = command
			@info = info
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}searchResponse
		#   m_return - DocumentPagedList
		class SearchResponse
		  def m_return
			@v_return
		  end

		  def m_return=(value)
			@v_return = value
		  end

		  def initialize(v_return = nil)
			@v_return = v_return
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}submitDocumentWithBinaryResource
		#   documentInfo - DocumentInfo
		#   resourceInfo - ResourceInfo
		#   data - Base64Binary
		class SubmitDocumentWithBinaryResource
		  attr_accessor :documentInfo
		  attr_accessor :resourceInfo
		  attr_accessor :data

		  def initialize(documentInfo = nil, resourceInfo = nil, data = nil)
			@documentInfo = documentInfo
			@resourceInfo = resourceInfo
			@data = data
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}submitDocumentWithBinaryResourceResponse
		#   m_return - DocumentTicket
		class SubmitDocumentWithBinaryResourceResponse
		  def m_return
			@v_return
		  end

		  def m_return=(value)
			@v_return = value
		  end

		  def initialize(v_return = nil)
			@v_return = v_return
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}submitDocumentWithTextResource
		#   documentInfo - DocumentInfo
		#   resourceInfo - ResourceInfo
		#   data - SOAP::SOAPString
		class SubmitDocumentWithTextResource
		  attr_accessor :documentInfo
		  attr_accessor :resourceInfo
		  attr_accessor :data

		  def initialize(documentInfo = nil, resourceInfo = nil, data = nil)
			@documentInfo = documentInfo
			@resourceInfo = resourceInfo
			@data = data
		  end
		end

		# {http://impl.services.service.ws.projectdirector.gs4tr.org}submitDocumentWithTextResourceResponse
		#   m_return - DocumentTicket
		class SubmitDocumentWithTextResourceResponse
		  def m_return
			@v_return
		  end

		  def m_return=(value)
			@v_return = value
		  end

		  def initialize(v_return = nil)
			@v_return = v_return
		  end
		end
	end
end