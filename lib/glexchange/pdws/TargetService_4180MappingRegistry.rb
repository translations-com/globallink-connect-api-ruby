require 'glexchange/pdws/TargetService_4180.rb'
require 'soap/mapping'

module Glexchange
  module Pdws
    module TargetMappingRegistry
      TargetEncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
      TargetLiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
      NsImplServicesServiceWsProjectdirectorGs4trOrg = "http://impl.services.service.ws.projectdirector.gs4tr.org"
      NsXmlmime = "http://www.w3.org/2005/05/xmlmime"
      NsXsd = "http://dto.model.projectdirector.gs4tr.org/xsd"

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Notification,
        :schema_type => XSD::QName.new(NsXsd, "Notification"),
        :schema_element => [
          ["errorMessage", "SOAP::SOAPString"],
          ["notificationDate", "Glexchange::Pdws::Date"],
          ["notificationPriority", "Glexchange::Pdws::NotificationPriority"],
          ["notificationText", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::NotificationPriority,
        :schema_type => XSD::QName.new(NsXsd, "NotificationPriority"),
        :schema_element => [
          ["notificationPriorityName", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Announcement,
        :schema_type => XSD::QName.new(NsXsd, "Announcement"),
        :schema_element => [
          ["announcementText", "SOAP::SOAPString"],
          ["date", "Glexchange::Pdws::Date"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Batch,
        :schema_type => XSD::QName.new(NsXsd, "Batch"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["targetLanguages", "SOAP::SOAPString[]", [0, nil]],
          ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ContentMonitorPluginInfo,
        :schema_type => XSD::QName.new(NsXsd, "ContentMonitorPluginInfo"),
        :schema_element => [
          ["pluginId", "SOAP::SOAPString"],
          ["pluginName", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Date,
        :schema_type => XSD::QName.new(NsXsd, "Date"),
        :schema_element => [
          ["critical", "SOAP::SOAPBoolean"],
          ["date", "SOAP::SOAPLong"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Document,
        :schema_type => XSD::QName.new(NsXsd, "Document"),
        :schema_element => [
          ["documentGroup", "Glexchange::Pdws::DocumentGroup"],
          ["documentInfo", "Glexchange::Pdws::DocumentInfo"],
          ["id", "SOAP::SOAPString"],
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["sourceWordCount", "SOAP::SOAPInt"],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::DocumentGroup,
        :schema_type => XSD::QName.new(NsXsd, "DocumentGroup"),
        :schema_element => [
          ["classifier", "SOAP::SOAPString"],
          ["documents", "Glexchange::Pdws::Document[]", [0, nil]],
          ["mimeType", "SOAP::SOAPString"],
          ["submission", "Glexchange::Pdws::Submission"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::DocumentInfo,
        :schema_type => XSD::QName.new(NsXsd, "DocumentInfo"),
        :schema_element => [
          ["childDocumentInfos", "Glexchange::Pdws::DocumentInfo[]", [0, nil]],
          ["clientIdentifier", "SOAP::SOAPString"],
          ["dateRequested", "Glexchange::Pdws::Date"],
          ["instructions", "SOAP::SOAPString"],
          ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
          ["name", "SOAP::SOAPString"],
          ["projectTicket", "SOAP::SOAPString"],
          ["sourceLocale", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"],
          ["targetInfos", "Glexchange::Pdws::TargetInfo[]", [0, nil]],
          ["wordCount", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::DocumentPagedList,
        :schema_type => XSD::QName.new(NsXsd, "DocumentPagedList"),
        :schema_element => [
          ["elements", "Glexchange::Pdws::Document[]", [0, nil]],
          ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["totalCount", "SOAP::SOAPLong"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::DocumentSearchRequest,
        :schema_type => XSD::QName.new(NsXsd, "DocumentSearchRequest"),
        :schema_element => [
          ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
          ["sourceLocaleId", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::DocumentTicket,
        :schema_type => XSD::QName.new(NsXsd, "DocumentTicket"),
        :schema_element => [
          ["submissionTicket", "SOAP::SOAPString"],
          ["ticketId", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::EntityTypeEnum,
        :schema_type => XSD::QName.new(NsXsd, "EntityTypeEnum"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::FileFormatProfile,
        :schema_type => XSD::QName.new(NsXsd, "FileFormatProfile"),
        :schema_element => [
          ["configurable", "SOAP::SOAPBoolean"],
          ["isDefault", "SOAP::SOAPBoolean"],
          ["mimeType", "SOAP::SOAPString"],
          ["pluginId", "SOAP::SOAPString"],
          ["pluginName", "SOAP::SOAPString"],
          ["profileName", "SOAP::SOAPString"],
          ["targetWorkflowDefinition", "Glexchange::Pdws::WorkflowDefinition"],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::FileFormatProgressData,
        :schema_type => XSD::QName.new(NsXsd, "FileFormatProgressData"),
        :schema_element => [
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["fileCount", "SOAP::SOAPLong"],
          ["fileFormatName", "SOAP::SOAPString"],
          ["fileProgressData", "Glexchange::Pdws::FileProgressData"],
          ["jobTicket", "SOAP::SOAPString"],
          ["workflowDueDate", "Glexchange::Pdws::Date"],
          ["workflowStatus", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::FileProgressData,
        :schema_type => XSD::QName.new(NsXsd, "FileProgressData"),
        :schema_element => [
          ["numberOfAvailableFiles", "SOAP::SOAPInt"],
          ["numberOfCanceledFiles", "SOAP::SOAPInt"],
          ["numberOfCompletedFiles", "SOAP::SOAPInt"],
          ["numberOfDeliveredFiles", "SOAP::SOAPInt"],
          ["numberOfFailedFiles", "SOAP::SOAPInt"],
          ["numberOfInProcessFiles", "SOAP::SOAPInt"],
          ["overallProgressPercent", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::FuzzyTmStatistics,
        :schema_type => XSD::QName.new(NsXsd, "FuzzyTmStatistics"),
        :schema_element => [
          ["fuzzyName", "SOAP::SOAPString"],
          ["wordCount", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ItemFolderEnum,
        :schema_type => XSD::QName.new(NsXsd, "ItemFolderEnum"),
        :schema_element => [
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ItemStatusEnum,
        :schema_type => XSD::QName.new(NsXsd, "ItemStatusEnum"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Metadata,
        :schema_type => XSD::QName.new(NsXsd, "Metadata"),
        :schema_element => [
          ["key", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Language,
        :schema_type => XSD::QName.new(NsXsd, "Language"),
        :schema_element => [
          ["locale", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::LanguageDirection,
        :schema_type => XSD::QName.new(NsXsd, "LanguageDirection"),
        :schema_element => [
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::LanguageDirectionModel,
        :schema_type => XSD::QName.new(NsXsd, "LanguageDirectionModel"),
        :schema_element => [
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["fileCount", "SOAP::SOAPLong"],
          ["fileFormatProgressData", "Glexchange::Pdws::FileFormatProgressData[]", [0, nil]],
          ["fileProgress", "Glexchange::Pdws::FileProgressData"],
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"],
          ["workflowDueDate", "Glexchange::Pdws::Date"],
          ["workflowStatus", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::LanguagePhaseInfo,
        :schema_type => XSD::QName.new(NsXsd, "LanguagePhaseInfo"),
        :schema_element => [
          ["phaseStartDate", "Glexchange::Pdws::Date"],
          ["sourceFileList", "SOAP::SOAPString[]", [0, nil]],
          ["tmStatistics", "Glexchange::Pdws::TmStatistics"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Organization,
        :schema_type => XSD::QName.new(NsXsd, "Organization"),
        :schema_element => [
          ["availableTasks", "SOAP::SOAPInteger"],
          ["parentOrganization", "Glexchange::Pdws::Organization"],
          ["organizationInfo", "Glexchange::Pdws::OrganizationInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::OrganizationInfo,
        :schema_type => XSD::QName.new(NsXsd, "OrganizationInfo"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["ticket", "SOAP::SOAPString"],
          ["currencyCode", "SOAP::SOAPString"],
          ["domain", "SOAP::SOAPString"],
          ["theme", "SOAP::SOAPString"],
          ["enabled", "SOAP::SOAPBoolean"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::PagedListInfo,
        :schema_type => XSD::QName.new(NsXsd, "PagedListInfo"),
        :schema_element => [
          ["index", "SOAP::SOAPInt"],
          ["indexesSize", "SOAP::SOAPInt"],
          ["size", "SOAP::SOAPInt"],
          ["sortDirection", "SOAP::SOAPString"],
          ["sortProperty", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Phase,
        :schema_type => XSD::QName.new(NsXsd, "Phase"),
        :schema_element => [
          ["dateEnded", "Glexchange::Pdws::Date"],
          ["dueDate", "Glexchange::Pdws::Date"],
          ["name", "SOAP::SOAPString"],
          ["status", "Glexchange::Pdws::ItemStatusEnum"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::PreviewResult,
        :schema_type => XSD::QName.new(NsXsd, "PreviewResult"),
        :schema_element => [
          ["message", "SOAP::SOAPString"],
          ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Priority,
        :schema_type => XSD::QName.new(NsXsd, "Priority"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Project,
        :schema_type => XSD::QName.new(NsXsd, "Project"),
        :schema_element => [
          ["announcements", "Glexchange::Pdws::Announcement[]", [0, nil]],
          ["contentMonitorPluginInfo", "Glexchange::Pdws::ContentMonitorPluginInfo"],
          ["defaultTargetWorkflowDefinition", "Glexchange::Pdws::WorkflowDefinition"],
          ["defaultTargetWorkflowDefinitionTicket", "SOAP::SOAPString"],
          ["fileFormatProfiles", "Glexchange::Pdws::FileFormatProfile[]", [0, nil]],
          ["includeSubmissionNameInLocalizationKit", "SOAP::SOAPBoolean[]", [0, nil]],
          ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
          ["organizationName", "SOAP::SOAPString"],
          ["projectCustomFieldConfiguration", "Glexchange::Pdws::ProjectCustomFieldConfiguration[]", [0, nil]],
          ["projectInfo", "Glexchange::Pdws::ProjectInfo"],
          ["projectLanguageDirections", "Glexchange::Pdws::ProjectLanguageDirection[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"],
          ["workflowDefinitions", "Glexchange::Pdws::WorkflowDefinition[]", [0, nil]]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ProjectInfo,
        :schema_type => XSD::QName.new(NsXsd, "ProjectInfo"),
        :schema_element => [
          ["clientIdentifier", "SOAP::SOAPString"],
          ["defaultJobWorkflowDefinitionTicket", "SOAP::SOAPString"],
          ["defaultSubmissionWorkflowDefinitionTicket", "SOAP::SOAPString"],
          ["defaultTargetWorkflowDefinitionTicket", "SOAP::SOAPString"],
          ["enabled", "SOAP::SOAPBoolean"],
          ["name", "SOAP::SOAPString"],
          ["shortCode", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ProjectLanguage,
        :schema_type => XSD::QName.new(NsXsd, "ProjectLanguage"),
        :schema_element => [
          ["customLocaleCode", "SOAP::SOAPString"],
          ["localeCode", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ProjectLanguageDirection,
        :schema_type => XSD::QName.new(NsXsd, "ProjectLanguageDirection"),
        :schema_element => [
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"],
          ["default", "SOAP::SOAPBoolean"],
          ["frequent", "SOAP::SOAPBoolean"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ProjectAClient,
        :schema_type => XSD::QName.new(NsXsd, "ProjectAClient"),
        :schema_element => [
          ["enabled", "SOAP::SOAPBoolean"],
          ["name", "SOAP::SOAPString"],
          ["parentOrganization", "Glexchange::Pdws::Organization"],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::RepositoryItem,
        :schema_type => XSD::QName.new(NsXsd, "RepositoryItem"),
        :schema_element => [
          ["data", "Glexchange::Pdws::Base64Binary"],
          ["resourceInfo", "Glexchange::Pdws::ResourceInfo"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ResourceInfo,
        :schema_type => XSD::QName.new(NsXsd, "ResourceInfo"),
        :schema_element => [
          ["classifier", "SOAP::SOAPString"],
          ["clientIdentifier", "SOAP::SOAPString"],
          ["description", "SOAP::SOAPString"],
          ["encoding", "SOAP::SOAPString"],
          ["md5Checksum", "SOAP::SOAPString"],
          ["mimeType", "SOAP::SOAPString"],
          ["name", "SOAP::SOAPString"],
          ["path", "SOAP::SOAPString"],
          ["resourceInfoId", "SOAP::SOAPLong"],
          ["size", "SOAP::SOAPLong"],
          ["type", "Glexchange::Pdws::ResourceType"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ResourceType,
        :schema_type => XSD::QName.new(NsXsd, "ResourceType"),
        :schema_element => [
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Submission,
        :schema_type => XSD::QName.new(NsXsd, "Submission"),
        :schema_element => [
          ["alerts", "Glexchange::Pdws::Notification[]", [0, nil]],
          ["availableTasks", "SOAP::SOAPInt"],
          ["batches", "Glexchange::Pdws::Batch[]", [0, nil]],
          ["dateArchived", "Glexchange::Pdws::Date"],
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["dateCreated", "Glexchange::Pdws::Date"],
          ["dateEstimated", "Glexchange::Pdws::Date"],
          ["documents", "Glexchange::Pdws::Document[]", [0, nil]],
          ["dueDate", "Glexchange::Pdws::Date"],
          ["id", "SOAP::SOAPString"],
          ["owner", "SOAP::SOAPString"],
          ["project", "Glexchange::Pdws::Project"],
          ["status", "Glexchange::Pdws::ItemStatusEnum"],
          ["submissionId", "SOAP::SOAPLong"],
          ["submissionInfo", "Glexchange::Pdws::SubmissionInfo"],
          ["submitterFullNames", "SOAP::SOAPString[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"],
          ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::SubmissionInfo,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionInfo"),
        :schema_element => [
          ["additionalCosts", "SOAP::SOAPString"],
          ["autoStartChilds", "SOAP::SOAPBoolean"],
          ["claimScope", "Glexchange::Pdws::ClaimScopeEnum"],
          ["clientIdentifier", "SOAP::SOAPString"],
          ["dateRequested", "Glexchange::Pdws::Date"],
          ["internalNotes", "SOAP::SOAPString"],
          ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
          ["name", "SOAP::SOAPString"],
          ["officeName", "SOAP::SOAPString"],
          ["paClientTicket", "SOAP::SOAPString"],
          ["paJobNumber", "SOAP::SOAPString"],
          ["priority", "Glexchange::Pdws::Priority"],
          ["projectTicket", "SOAP::SOAPString"],
          ["revenue", "SOAP::SOAPDouble"],
          ["submissionBackground", "SOAP::SOAPString"],
          ["submissionCustomFields", "Glexchange::Pdws::SubmissionCustomFields[]", [0, nil]],
          ["submitters", "SOAP::SOAPString[]", [0, nil]],
          ["workflowDefinitionTicket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::SubmissionPagedList,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionPagedList"),
        :schema_element => [
          ["elements", "Glexchange::Pdws::Submission[]", [0, nil]],
          ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["totalCount", "SOAP::SOAPLong"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::SimpleSubmissionSearchModel,
        :schema_type => XSD::QName.new(NsXsd, "SimpleSubmissionSearchModel"),
        :schema_element => [
          ["alerts", "Glexchange::Pdws::Notification[]", [0, nil]],
          ["availableTasks", "SOAP::SOAPLong"],
          ["budgetStatus", "SOAP::SOAPInt"],
          ["claimScope", "Glexchange::Pdws::ClaimScopeEnum"],
          ["customFields", "SOAP::SOAPString[]", [0, nil]],
          ["date", "Glexchange::Pdws::Date"],
          ["dateArchived", "Glexchange::Pdws::Date"],
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["dateStarted", "Glexchange::Pdws::Date"],
          ["dueDate", "Glexchange::Pdws::Date"],
          ["fileCount", "SOAP::SOAPLong"],
          ["fileProgress", "Glexchange::Pdws::FileProgressData"],
          ["gate", "SOAP::SOAPByte"],
          ["id", "SOAP::SOAPString"],
          ["instructions", "SOAP::SOAPString"],
          ["officeName", "SOAP::SOAPString"],
          ["owner", "Glexchange::Pdws::UserData[]", [0, nil]],
          ["paClientName", "SOAP::SOAPString"],
          ["parentSubmissionName", "SOAP::SOAPString"],
          ["parentTicket", "SOAP::SOAPString"],
          ["pmNotes", "SOAP::SOAPString"],
          ["priority", "SOAP::SOAPString"],
          ["projectName", "SOAP::SOAPString"],
          ["projectTicket", "SOAP::SOAPString"],
          ["quote", "SOAP::SOAPByte"],
          ["reserved", "SOAP::SOAPBoolean"],
          ["sourceLanguage", "SOAP::SOAPString"],
          ["status", "Glexchange::Pdws::ItemStatusEnum"],
          ["submissionBackground", "SOAP::SOAPString"],
          ["submissionName", "SOAP::SOAPString"],
          ["submitterFullName", "Glexchange::Pdws::UserData[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"],
          ["wordCount", "SOAP::SOAPLong"],
          ["workflowDueDate", "Glexchange::Pdws::Date"],
          ["workflowStatus", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::SubmissionSearchModelPagedList,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionSearchModelPagedList"),
        :schema_element => [
          ["elements", "Glexchange::Pdws::SimpleSubmissionSearchModel[]", [0, nil]],
          ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["totalCount", "SOAP::SOAPLong"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::SubmissionSearchRequest,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionSearchRequest"),
        :schema_element => [
          ["folder", "Glexchange::Pdws::ItemFolderEnum"],
          ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
          ["submissionDate", "Glexchange::Pdws::Date"],
          ["submissionDueDate", "Glexchange::Pdws::Date"],
          ["submissionName", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Target,
        :schema_type => XSD::QName.new(NsXsd, "Target"),
        :schema_element => [
          ["availableTasks", "SOAP::SOAPLong"],
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["dateCreated", "Glexchange::Pdws::Date"],
          ["dateEstimated", "Glexchange::Pdws::Date"],
          ["document", "Glexchange::Pdws::Document"],
          ["downloadThresholdTimeStamp", "Glexchange::Pdws::Date"],
          ["dueDate", "Glexchange::Pdws::Date"],
          ["fileName", "SOAP::SOAPString"],
          ["id", "SOAP::SOAPString"],
          ["phases", "Glexchange::Pdws::Phase[]", [0, nil]],
          ["refPhase", "Glexchange::Pdws::Phase"],
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["sourceWordCount", "SOAP::SOAPInt"],
          ["status", "Glexchange::Pdws::ItemStatusEnum"],
          ["targetInfo", "Glexchange::Pdws::TargetInfo"],
          ["targetLanguage", "Glexchange::Pdws::Language"],
          ["targetWordCount", "SOAP::SOAPInt"],
          ["ticket", "SOAP::SOAPString"],
          ["tmStatistics", "Glexchange::Pdws::TmStatistics"],
          ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::TargetInfo,
        :schema_type => XSD::QName.new(NsXsd, "TargetInfo"),
        :schema_element => [
          ["dateRequested", "Glexchange::Pdws::Date"],
          ["encoding", "SOAP::SOAPString"],
          ["instructions", "SOAP::SOAPString"],
          ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
          ["priority", "Glexchange::Pdws::Priority"],
          ["requestedDueDate", "SOAP::SOAPLong"],
          ["targetLocale", "SOAP::SOAPString"],
          ["workflowDefinitionTicket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::TargetPagedList,
        :schema_type => XSD::QName.new(NsXsd, "TargetPagedList"),
        :schema_element => [
          ["elements", "Glexchange::Pdws::Target[]", [0, nil]],
          ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["totalCount", "SOAP::SOAPLong"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::TargetSearchRequest,
        :schema_type => XSD::QName.new(NsXsd, "TargetSearchRequest"),
        :schema_element => [
          ["dateCreated", "Glexchange::Pdws::Date"],
          ["folder", "Glexchange::Pdws::ItemFolderEnum"],
          ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
          ["sourceLocaleId", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"],
          ["targetLocaleId", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Task,
        :schema_type => XSD::QName.new(NsXsd, "Task"),
        :schema_element => [
          ["groupName", "SOAP::SOAPString"],
          ["selectStyle", "SOAP::SOAPInt"],
          ["taskId", "SOAP::SOAPInt"],
          ["taskName", "SOAP::SOAPString"],
          ["weight", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::TmStatistics,
        :schema_type => XSD::QName.new(NsXsd, "TmStatistics"),
        :schema_element => [
          ["fuzzyRepetitionsWordCount1", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount10", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount2", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount3", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount4", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount5", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount6", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount7", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount8", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount9", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount1", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount10", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount2", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount3", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount4", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount5", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount6", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount7", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount8", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount9", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["inContextMatchWordCount", "SOAP::SOAPInt"],
          ["noMatchWordCount", "SOAP::SOAPInt"],
          ["oneHundredMatchWordCount", "SOAP::SOAPInt"],
          ["repetitionWordCount", "SOAP::SOAPInt"],
          ["totalWordCount", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::WorkflowDefinition,
        :schema_type => XSD::QName.new(NsXsd, "WorkflowDefinition"),
        :schema_element => [
          ["description", "SOAP::SOAPString"],
          ["name", "SOAP::SOAPString"],
          ["ticket", "SOAP::SOAPString"],
          ["type", "Glexchange::Pdws::EntityTypeEnum"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::UserData,
        :schema_type => XSD::QName.new(NsXsd, "UserData"),
        :schema_element => [
          ["email", "SOAP::SOAPString"],
          ["name", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::UserInfo,
        :schema_type => XSD::QName.new(NsXsd, "UserInfo"),
        :schema_element => [
          ["accountLocked", "SOAP::SOAPBoolean"],
          ["accountNonExpired", "SOAP::SOAPBoolean"],
          ["address", "SOAP::SOAPString"],
          ["autoClaimMultipleTasks", "SOAP::SOAPBoolean"],
          ["claimMultipleJobTasks", "SOAP::SOAPBoolean"],
          ["credentialsNonExpired", "SOAP::SOAPBoolean"],
          ["dateLastLogin", "Glexchange::Pdws::Date"],
          ["department", "SOAP::SOAPString"],
          ["emailAddress", "SOAP::SOAPString"],
          ["emailNotification", "SOAP::SOAPBoolean"],
          ["enabled", "SOAP::SOAPBoolean"],
          ["fax", "SOAP::SOAPString"],
          ["firstName", "SOAP::SOAPString"],
          ["lastName", "SOAP::SOAPString"],
          ["password", "SOAP::SOAPString"],
          ["phone1", "SOAP::SOAPString"],
          ["phone2", "SOAP::SOAPString"],
          ["timeZone", "SOAP::SOAPString"],
          ["userName", "SOAP::SOAPString"],
          ["userType", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::TiUserInfo,
        :schema_type => XSD::QName.new(NsXsd, "TiUserInfo"),
        :schema_element => [
          ["languageDirections", "Glexchange::Pdws::LanguageDirection[]", [0, nil]],
          ["organizationId", "SOAP::SOAPLong"],
          ["projectRoles", "SOAP::SOAPString[]", [0, nil]],
          ["projectTicket", "SOAP::SOAPString[]", [0, nil]],
          ["systemRoles", "SOAP::SOAPString[]", [0, nil]],
          ["vendorId", "SOAP::SOAPLong"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ClaimScopeEnum,
        :schema_type => XSD::QName.new(NsXsd, "ClaimScopeEnum"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::ProjectCustomFieldConfiguration,
        :schema_type => XSD::QName.new(NsXsd, "ProjectCustomFieldConfiguration"),
        :schema_element => [
          ["description", "SOAP::SOAPString"],
          ["mandatory", "SOAP::SOAPBoolean"],
          ["name", "SOAP::SOAPString"],
          ["type", "SOAP::SOAPString"],
          ["values", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::SubmissionCustomFields,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionCustomFields"),
        :schema_element => [
          ["fieldName", "SOAP::SOAPString"],
          ["fieldValue", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::UserProfile,
        :schema_type => XSD::QName.new(NsXsd, "UserProfile"),
        :schema_element => [
          ["availableTasks", "SOAP::SOAPInt"],
          ["organizationName", "SOAP::SOAPString"],
          ["systemRoles", "Glexchange::Pdws::Role[]", [0, nil]],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"],
          ["userInfo", "Glexchange::Pdws::UserInfo"],
          ["vendorName", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Role,
        :schema_type => XSD::QName.new(NsXsd, "Role"),
        :schema_element => [
          ["policies", "Glexchange::Pdws::Policy[]", [0, nil]],
          ["roleId", "SOAP::SOAPString"],
          ["roleType", "Glexchange::Pdws::RoleTypeEnum"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::RoleTypeEnum,
        :schema_type => XSD::QName.new(NsXsd, "RoleTypeEnum"),
        :schema_element => [
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Policy,
        :schema_type => XSD::QName.new(NsXsd, "Policy"),
        :schema_element => [
          ["category", "SOAP::SOAPString"],
          ["policyId", "SOAP::SOAPString"],
          ["policyType", "Glexchange::Pdws::RoleTypeEnum"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::LanguageWorkflowInfo,
        :schema_type => XSD::QName.new(NsXsd, "LanguageWorkflowInfo"),
        :schema_element => [
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::BatchWorkflowInfo,
        :schema_type => XSD::QName.new(NsXsd, "BatchWorkflowInfo"),
        :schema_element => [
          ["batchName", "SOAP::SOAPString"],
          ["languageWorkflowInfo", "Glexchange::Pdws::LanguageWorkflowInfo"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::TargetWorkflowInfo,
        :schema_type => XSD::QName.new(NsXsd, "TargetWorkflowInfo"),
        :schema_element => [
          ["batchName", "SOAP::SOAPString"],
          ["documentName", "SOAP::SOAPString"],
          ["fileName", "SOAP::SOAPString"],
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"],
          ["targetTicket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::SubmissionWorkflowInfo,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionWorkflowInfo"),
        :schema_element => [
          ["batchWorkflowInfos", "Glexchange::Pdws::BatchWorkflowInfo[]", [0, nil]],
          ["languageWorkflowInfos", "Glexchange::Pdws::LanguageWorkflowInfo[]", [0, nil]],
          ["phaseName", "SOAP::SOAPString"],
          ["submissionId", "SOAP::SOAPLong"],
          ["submissionName", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"],
          ["targetWorkflowInfos", "Glexchange::Pdws::TargetWorkflowInfo[]", [0, nil]]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::WorkflowRequest,
        :schema_type => XSD::QName.new(NsXsd, "WorkflowRequest"),
        :schema_element => [
          ["batchWorkflowInfos", "Glexchange::Pdws::BatchWorkflowInfo[]", [0, nil]],
          ["languageWorkflowInfos", "Glexchange::Pdws::LanguageWorkflowInfo[]", [0, nil]],
          ["phaseName", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"],
          ["targetWorkflowInfos", "Glexchange::Pdws::TargetWorkflowInfo[]", [0, nil]]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::WorkflowRequestTicket,
        :schema_type => XSD::QName.new(NsXsd, "WorkflowRequestTicket"),
        :schema_element => [
          ["message", "SOAP::SOAPString"],
          ["processTicket", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::DownloadActionResult,
        :schema_type => XSD::QName.new(NsXsd, "DownloadActionResult"),
        :schema_element => [
          ["message", "SOAP::SOAPString"],
          ["processingFinished", "SOAP::SOAPBoolean"],
          ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::UploadActionResult,
        :schema_type => XSD::QName.new(NsXsd, "UploadActionResult"),
        :schema_element => [
          ["messages", "SOAP::SOAPString[]", [0, nil]],
          ["processingFinished", "SOAP::SOAPBoolean"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::DownloadCollateralResult,
        :schema_type => XSD::QName.new(NsXsd, "DownloadCollateralResult"),
        :schema_element => [
          ["errorMessages", "SOAP::SOAPString[]", [0, nil]],
          ["processingFinished", "SOAP::SOAPBoolean"],
          ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
        ]
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::Base64Binary,
        :schema_type => XSD::QName.new(NsXmlmime, "base64Binary"),
        :schema_attribute => {
          XSD::QName.new(NsXmlmime, "contentType") => "SOAP::SOAPString"
        }
      )

      TargetEncodedRegistry.register(
        :class => Glexchange::Pdws::HexBinary,
        :schema_type => XSD::QName.new(NsXmlmime, "hexBinary"),
        :schema_attribute => {
          XSD::QName.new(NsXmlmime, "contentType") => "SOAP::SOAPString"
        }
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Notification,
        :schema_type => XSD::QName.new(NsXsd, "Notification"),
        :schema_element => [
          ["errorMessage", "SOAP::SOAPString"],
          ["notificationDate", "Glexchange::Pdws::Date"],
          ["notificationPriority", "Glexchange::Pdws::NotificationPriority"],
          ["notificationText", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::NotificationPriority,
        :schema_type => XSD::QName.new(NsXsd, "NotificationPriority"),
        :schema_element => [
          ["notificationPriorityName", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Announcement,
        :schema_type => XSD::QName.new(NsXsd, "Announcement"),
        :schema_element => [
          ["announcementText", "SOAP::SOAPString"],
          ["date", "Glexchange::Pdws::Date"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Batch,
        :schema_type => XSD::QName.new(NsXsd, "Batch"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["targetLanguages", "SOAP::SOAPString[]", [0, nil]],
          ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ContentMonitorPluginInfo,
        :schema_type => XSD::QName.new(NsXsd, "ContentMonitorPluginInfo"),
        :schema_element => [
          ["pluginId", "SOAP::SOAPString"],
          ["pluginName", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Date,
        :schema_type => XSD::QName.new(NsXsd, "Date"),
        :schema_element => [
          ["critical", "SOAP::SOAPBoolean"],
          ["date", "SOAP::SOAPLong"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Document,
        :schema_type => XSD::QName.new(NsXsd, "Document"),
        :schema_element => [
          ["documentGroup", "Glexchange::Pdws::DocumentGroup"],
          ["documentInfo", "Glexchange::Pdws::DocumentInfo"],
          ["id", "SOAP::SOAPString"],
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["sourceWordCount", "SOAP::SOAPInt"],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DocumentGroup,
        :schema_type => XSD::QName.new(NsXsd, "DocumentGroup"),
        :schema_element => [
          ["classifier", "SOAP::SOAPString"],
          ["documents", "Glexchange::Pdws::Document[]", [0, nil]],
          ["mimeType", "SOAP::SOAPString"],
          ["submission", "Glexchange::Pdws::Submission"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DocumentInfo,
        :schema_type => XSD::QName.new(NsXsd, "DocumentInfo"),
        :schema_element => [
          ["childDocumentInfos", "Glexchange::Pdws::DocumentInfo[]", [0, nil]],
          ["clientIdentifier", "SOAP::SOAPString"],
          ["dateRequested", "Glexchange::Pdws::Date"],
          ["instructions", "SOAP::SOAPString"],
          ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
          ["name", "SOAP::SOAPString"],
          ["projectTicket", "SOAP::SOAPString"],
          ["sourceLocale", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"],
          ["targetInfos", "Glexchange::Pdws::TargetInfo[]", [0, nil]],
          ["wordCount", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DocumentPagedList,
        :schema_type => XSD::QName.new(NsXsd, "DocumentPagedList"),
        :schema_element => [
          ["elements", "Glexchange::Pdws::Document[]", [0, nil]],
          ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["totalCount", "SOAP::SOAPLong"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DocumentSearchRequest,
        :schema_type => XSD::QName.new(NsXsd, "DocumentSearchRequest"),
        :schema_element => [
          ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
          ["sourceLocaleId", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DocumentTicket,
        :schema_type => XSD::QName.new(NsXsd, "DocumentTicket"),
        :schema_element => [
          ["submissionTicket", "SOAP::SOAPString"],
          ["ticketId", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::EntityTypeEnum,
        :schema_type => XSD::QName.new(NsXsd, "EntityTypeEnum"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::FileFormatProfile,
        :schema_type => XSD::QName.new(NsXsd, "FileFormatProfile"),
        :schema_element => [
          ["configurable", "SOAP::SOAPBoolean"],
          ["isDefault", "SOAP::SOAPBoolean"],
          ["mimeType", "SOAP::SOAPString"],
          ["pluginId", "SOAP::SOAPString"],
          ["pluginName", "SOAP::SOAPString"],
          ["profileName", "SOAP::SOAPString"],
          ["targetWorkflowDefinition", "Glexchange::Pdws::WorkflowDefinition"],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::FileFormatProgressData,
        :schema_type => XSD::QName.new(NsXsd, "FileFormatProgressData"),
        :schema_element => [
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["fileCount", "SOAP::SOAPLong"],
          ["fileFormatName", "SOAP::SOAPString"],
          ["fileProgressData", "Glexchange::Pdws::FileProgressData"],
          ["jobTicket", "SOAP::SOAPString"],
          ["workflowDueDate", "Glexchange::Pdws::Date"],
          ["workflowStatus", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::FileProgressData,
        :schema_type => XSD::QName.new(NsXsd, "FileProgressData"),
        :schema_element => [
          ["numberOfAvailableFiles", "SOAP::SOAPInt"],
          ["numberOfCanceledFiles", "SOAP::SOAPInt"],
          ["numberOfCompletedFiles", "SOAP::SOAPInt"],
          ["numberOfDeliveredFiles", "SOAP::SOAPInt"],
          ["numberOfFailedFiles", "SOAP::SOAPInt"],
          ["numberOfInProcessFiles", "SOAP::SOAPInt"],
          ["overallProgressPercent", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::FuzzyTmStatistics,
        :schema_type => XSD::QName.new(NsXsd, "FuzzyTmStatistics"),
        :schema_element => [
          ["fuzzyName", "SOAP::SOAPString"],
          ["wordCount", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ItemFolderEnum,
        :schema_type => XSD::QName.new(NsXsd, "ItemFolderEnum"),
        :schema_element => [
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ItemStatusEnum,
        :schema_type => XSD::QName.new(NsXsd, "ItemStatusEnum"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Metadata,
        :schema_type => XSD::QName.new(NsXsd, "Metadata"),
        :schema_element => [
          ["key", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Language,
        :schema_type => XSD::QName.new(NsXsd, "Language"),
        :schema_element => [
          ["locale", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::LanguageDirection,
        :schema_type => XSD::QName.new(NsXsd, "LanguageDirection"),
        :schema_element => [
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::LanguageDirectionModel,
        :schema_type => XSD::QName.new(NsXsd, "LanguageDirectionModel"),
        :schema_element => [
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["fileCount", "SOAP::SOAPLong"],
          ["fileFormatProgressData", "Glexchange::Pdws::FileFormatProgressData[]", [0, nil]],
          ["fileProgress", "Glexchange::Pdws::FileProgressData"],
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"],
          ["workflowDueDate", "Glexchange::Pdws::Date"],
          ["workflowStatus", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::LanguagePhaseInfo,
        :schema_type => XSD::QName.new(NsXsd, "LanguagePhaseInfo"),
        :schema_element => [
          ["phaseStartDate", "Glexchange::Pdws::Date"],
          ["sourceFileList", "SOAP::SOAPString[]", [0, nil]],
          ["tmStatistics", "Glexchange::Pdws::TmStatistics"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Organization,
        :schema_type => XSD::QName.new(NsXsd, "Organization"),
        :schema_element => [
          ["availableTasks", "SOAP::SOAPInteger"],
          ["parentOrganization", "Glexchange::Pdws::Organization"],
          ["organizationInfo", "Glexchange::Pdws::OrganizationInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::OrganizationInfo,
        :schema_type => XSD::QName.new(NsXsd, "OrganizationInfo"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["ticket", "SOAP::SOAPString"],
          ["currencyCode", "SOAP::SOAPString"],
          ["domain", "SOAP::SOAPString"],
          ["theme", "SOAP::SOAPString"],
          ["enabled", "SOAP::SOAPBoolean"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::PagedListInfo,
        :schema_type => XSD::QName.new(NsXsd, "PagedListInfo"),
        :schema_element => [
          ["index", "SOAP::SOAPInt"],
          ["indexesSize", "SOAP::SOAPInt"],
          ["size", "SOAP::SOAPInt"],
          ["sortDirection", "SOAP::SOAPString"],
          ["sortProperty", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Phase,
        :schema_type => XSD::QName.new(NsXsd, "Phase"),
        :schema_element => [
          ["dateEnded", "Glexchange::Pdws::Date"],
          ["dueDate", "Glexchange::Pdws::Date"],
          ["name", "SOAP::SOAPString"],
          ["status", "Glexchange::Pdws::ItemStatusEnum"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::PreviewResult,
        :schema_type => XSD::QName.new(NsXsd, "PreviewResult"),
        :schema_element => [
          ["message", "SOAP::SOAPString"],
          ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Priority,
        :schema_type => XSD::QName.new(NsXsd, "Priority"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Project,
        :schema_type => XSD::QName.new(NsXsd, "Project"),
        :schema_element => [
          ["announcements", "Glexchange::Pdws::Announcement[]", [0, nil]],
          ["contentMonitorPluginInfo", "Glexchange::Pdws::ContentMonitorPluginInfo"],
          ["defaultTargetWorkflowDefinition", "Glexchange::Pdws::WorkflowDefinition"],
          ["defaultTargetWorkflowDefinitionTicket", "SOAP::SOAPString"],
          ["fileFormatProfiles", "Glexchange::Pdws::FileFormatProfile[]", [0, nil]],
          ["includeSubmissionNameInLocalizationKit", "SOAP::SOAPBoolean[]", [0, nil]],
          ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
          ["organizationName", "SOAP::SOAPString"],
          ["projectCustomFieldConfiguration", "Glexchange::Pdws::ProjectCustomFieldConfiguration[]", [0, nil]],
          ["projectInfo", "Glexchange::Pdws::ProjectInfo"],
          ["projectLanguageDirections", "Glexchange::Pdws::ProjectLanguageDirection[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"],
          ["workflowDefinitions", "Glexchange::Pdws::WorkflowDefinition[]", [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ProjectInfo,
        :schema_type => XSD::QName.new(NsXsd, "ProjectInfo"),
        :schema_element => [
          ["clientIdentifier", "SOAP::SOAPString"],
          ["defaultJobWorkflowDefinitionTicket", "SOAP::SOAPString"],
          ["defaultSubmissionWorkflowDefinitionTicket", "SOAP::SOAPString"],
          ["defaultTargetWorkflowDefinitionTicket", "SOAP::SOAPString"],
          ["enabled", "SOAP::SOAPBoolean"],
          ["name", "SOAP::SOAPString"],
          ["shortCode", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ProjectLanguage,
        :schema_type => XSD::QName.new(NsXsd, "ProjectLanguage"),
        :schema_element => [
          ["customLocaleCode", "SOAP::SOAPString"],
          ["localeCode", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ProjectLanguageDirection,
        :schema_type => XSD::QName.new(NsXsd, "ProjectLanguageDirection"),
        :schema_element => [
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"],
          ["default", "SOAP::SOAPBoolean"],
          ["frequent", "SOAP::SOAPBoolean"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ProjectAClient,
        :schema_type => XSD::QName.new(NsXsd, "ProjectAClient"),
        :schema_element => [
          ["enabled", "SOAP::SOAPBoolean"],
          ["name", "SOAP::SOAPString"],
          ["parentOrganization", "Glexchange::Pdws::Organization"],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::RepositoryItem,
        :schema_type => XSD::QName.new(NsXsd, "RepositoryItem"),
        :schema_element => [
          ["data", "Glexchange::Pdws::Base64Binary"],
          ["resourceInfo", "Glexchange::Pdws::ResourceInfo"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ResourceInfo,
        :schema_type => XSD::QName.new(NsXsd, "ResourceInfo"),
        :schema_element => [
          ["classifier", "SOAP::SOAPString"],
          ["clientIdentifier", "SOAP::SOAPString"],
          ["description", "SOAP::SOAPString"],
          ["encoding", "SOAP::SOAPString"],
          ["md5Checksum", "SOAP::SOAPString"],
          ["mimeType", "SOAP::SOAPString"],
          ["name", "SOAP::SOAPString"],
          ["path", "SOAP::SOAPString"],
          ["resourceInfoId", "SOAP::SOAPLong"],
          ["size", "SOAP::SOAPLong"],
          ["type", "Glexchange::Pdws::ResourceType"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ResourceType,
        :schema_type => XSD::QName.new(NsXsd, "ResourceType"),
        :schema_element => [
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Submission,
        :schema_type => XSD::QName.new(NsXsd, "Submission"),
        :schema_element => [
          ["alerts", "Glexchange::Pdws::Notification[]", [0, nil]],
          ["availableTasks", "SOAP::SOAPInt"],
          ["batches", "Glexchange::Pdws::Batch[]", [0, nil]],
          ["dateArchived", "Glexchange::Pdws::Date"],
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["dateCreated", "Glexchange::Pdws::Date"],
          ["dateEstimated", "Glexchange::Pdws::Date"],
          ["documents", "Glexchange::Pdws::Document[]", [0, nil]],
          ["dueDate", "Glexchange::Pdws::Date"],
          ["id", "SOAP::SOAPString"],
          ["owner", "SOAP::SOAPString"],
          ["project", "Glexchange::Pdws::Project"],
          ["status", "Glexchange::Pdws::ItemStatusEnum"],
          ["submissionId", "SOAP::SOAPLong"],
          ["submissionInfo", "Glexchange::Pdws::SubmissionInfo"],
          ["submitterFullNames", "SOAP::SOAPString[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"],
          ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SubmissionInfo,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionInfo"),
        :schema_element => [
          ["additionalCosts", "SOAP::SOAPString"],
          ["autoStartChilds", "SOAP::SOAPBoolean"],
          ["claimScope", "Glexchange::Pdws::ClaimScopeEnum"],
          ["clientIdentifier", "SOAP::SOAPString"],
          ["dateRequested", "Glexchange::Pdws::Date"],
          ["internalNotes", "SOAP::SOAPString"],
          ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
          ["name", "SOAP::SOAPString"],
          ["officeName", "SOAP::SOAPString"],
          ["paClientTicket", "SOAP::SOAPString"],
          ["paJobNumber", "SOAP::SOAPString"],
          ["priority", "Glexchange::Pdws::Priority"],
          ["projectTicket", "SOAP::SOAPString"],
          ["revenue", "SOAP::SOAPDouble"],
          ["submissionBackground", "SOAP::SOAPString"],
          ["submissionCustomFields", "Glexchange::Pdws::SubmissionCustomFields[]", [0, nil]],
          ["submitters", "SOAP::SOAPString[]", [0, nil]],
          ["workflowDefinitionTicket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SubmissionPagedList,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionPagedList"),
        :schema_element => [
          ["elements", "Glexchange::Pdws::Submission[]", [0, nil]],
          ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["totalCount", "SOAP::SOAPLong"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SimpleSubmissionSearchModel,
        :schema_type => XSD::QName.new(NsXsd, "SimpleSubmissionSearchModel"),
        :schema_element => [
          ["alerts", "Glexchange::Pdws::Notification[]", [0, nil]],
          ["availableTasks", "SOAP::SOAPLong"],
          ["budgetStatus", "SOAP::SOAPInt"],
          ["claimScope", "Glexchange::Pdws::ClaimScopeEnum"],
          ["customFields", "SOAP::SOAPString[]", [0, nil]],
          ["date", "Glexchange::Pdws::Date"],
          ["dateArchived", "Glexchange::Pdws::Date"],
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["dateStarted", "Glexchange::Pdws::Date"],
          ["dueDate", "Glexchange::Pdws::Date"],
          ["fileCount", "SOAP::SOAPLong"],
          ["fileProgress", "Glexchange::Pdws::FileProgressData"],
          ["gate", "SOAP::SOAPByte"],
          ["id", "SOAP::SOAPString"],
          ["instructions", "SOAP::SOAPString"],
          ["officeName", "SOAP::SOAPString"],
          ["owner", "Glexchange::Pdws::UserData[]", [0, nil]],
          ["paClientName", "SOAP::SOAPString"],
          ["parentSubmissionName", "SOAP::SOAPString"],
          ["parentTicket", "SOAP::SOAPString"],
          ["pmNotes", "SOAP::SOAPString"],
          ["priority", "SOAP::SOAPString"],
          ["projectName", "SOAP::SOAPString"],
          ["projectTicket", "SOAP::SOAPString"],
          ["quote", "SOAP::SOAPByte"],
          ["reserved", "SOAP::SOAPBoolean"],
          ["sourceLanguage", "SOAP::SOAPString"],
          ["status", "Glexchange::Pdws::ItemStatusEnum"],
          ["submissionBackground", "SOAP::SOAPString"],
          ["submissionName", "SOAP::SOAPString"],
          ["submitterFullName", "Glexchange::Pdws::UserData[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"],
          ["wordCount", "SOAP::SOAPLong"],
          ["workflowDueDate", "Glexchange::Pdws::Date"],
          ["workflowStatus", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SubmissionSearchModelPagedList,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionSearchModelPagedList"),
        :schema_element => [
          ["elements", "Glexchange::Pdws::SimpleSubmissionSearchModel[]", [0, nil]],
          ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["totalCount", "SOAP::SOAPLong"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SubmissionSearchRequest,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionSearchRequest"),
        :schema_element => [
          ["folder", "Glexchange::Pdws::ItemFolderEnum"],
          ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
          ["submissionDate", "Glexchange::Pdws::Date"],
          ["submissionDueDate", "Glexchange::Pdws::Date"],
          ["submissionName", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Target,
        :schema_type => XSD::QName.new(NsXsd, "Target"),
        :schema_element => [
          ["availableTasks", "SOAP::SOAPLong"],
          ["dateCompleted", "Glexchange::Pdws::Date"],
          ["dateCreated", "Glexchange::Pdws::Date"],
          ["dateEstimated", "Glexchange::Pdws::Date"],
          ["document", "Glexchange::Pdws::Document"],
          ["downloadThresholdTimeStamp", "Glexchange::Pdws::Date"],
          ["dueDate", "Glexchange::Pdws::Date"],
          ["fileName", "SOAP::SOAPString"],
          ["id", "SOAP::SOAPString"],
          ["phases", "Glexchange::Pdws::Phase[]", [0, nil]],
          ["refPhase", "Glexchange::Pdws::Phase"],
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["sourceWordCount", "SOAP::SOAPInt"],
          ["status", "Glexchange::Pdws::ItemStatusEnum"],
          ["targetInfo", "Glexchange::Pdws::TargetInfo"],
          ["targetLanguage", "Glexchange::Pdws::Language"],
          ["targetWordCount", "SOAP::SOAPInt"],
          ["ticket", "SOAP::SOAPString"],
          ["tmStatistics", "Glexchange::Pdws::TmStatistics"],
          ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::TargetInfo,
        :schema_type => XSD::QName.new(NsXsd, "TargetInfo"),
        :schema_element => [
          ["dateRequested", "Glexchange::Pdws::Date"],
          ["encoding", "SOAP::SOAPString"],
          ["instructions", "SOAP::SOAPString"],
          ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
          ["priority", "Glexchange::Pdws::Priority"],
          ["requestedDueDate", "SOAP::SOAPLong"],
          ["targetLocale", "SOAP::SOAPString"],
          ["workflowDefinitionTicket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::TargetPagedList,
        :schema_type => XSD::QName.new(NsXsd, "TargetPagedList"),
        :schema_element => [
          ["elements", "Glexchange::Pdws::Target[]", [0, nil]],
          ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["totalCount", "SOAP::SOAPLong"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::TargetSearchRequest,
        :schema_type => XSD::QName.new(NsXsd, "TargetSearchRequest"),
        :schema_element => [
          ["dateCreated", "Glexchange::Pdws::Date"],
          ["folder", "Glexchange::Pdws::ItemFolderEnum"],
          ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
          ["sourceLocaleId", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"],
          ["targetLocaleId", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Task,
        :schema_type => XSD::QName.new(NsXsd, "Task"),
        :schema_element => [
          ["groupName", "SOAP::SOAPString"],
          ["selectStyle", "SOAP::SOAPInt"],
          ["taskId", "SOAP::SOAPInt"],
          ["taskName", "SOAP::SOAPString"],
          ["weight", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::TmStatistics,
        :schema_type => XSD::QName.new(NsXsd, "TmStatistics"),
        :schema_element => [
          ["fuzzyRepetitionsWordCount1", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount10", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount2", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount3", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount4", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount5", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount6", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount7", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount8", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyRepetitionsWordCount9", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount1", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount10", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount2", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount3", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount4", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount5", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount6", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount7", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount8", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["fuzzyWordCount9", "Glexchange::Pdws::FuzzyTmStatistics"],
          ["inContextMatchWordCount", "SOAP::SOAPInt"],
          ["noMatchWordCount", "SOAP::SOAPInt"],
          ["oneHundredMatchWordCount", "SOAP::SOAPInt"],
          ["repetitionWordCount", "SOAP::SOAPInt"],
          ["totalWordCount", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::WorkflowDefinition,
        :schema_type => XSD::QName.new(NsXsd, "WorkflowDefinition"),
        :schema_element => [
          ["description", "SOAP::SOAPString"],
          ["name", "SOAP::SOAPString"],
          ["ticket", "SOAP::SOAPString"],
          ["type", "Glexchange::Pdws::EntityTypeEnum"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::UserData,
        :schema_type => XSD::QName.new(NsXsd, "UserData"),
        :schema_element => [
          ["email", "SOAP::SOAPString"],
          ["name", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::UserInfo,
        :schema_type => XSD::QName.new(NsXsd, "UserInfo"),
        :schema_element => [
          ["accountLocked", "SOAP::SOAPBoolean"],
          ["accountNonExpired", "SOAP::SOAPBoolean"],
          ["address", "SOAP::SOAPString"],
          ["autoClaimMultipleTasks", "SOAP::SOAPBoolean"],
          ["claimMultipleJobTasks", "SOAP::SOAPBoolean"],
          ["credentialsNonExpired", "SOAP::SOAPBoolean"],
          ["dateLastLogin", "Glexchange::Pdws::Date"],
          ["department", "SOAP::SOAPString"],
          ["emailAddress", "SOAP::SOAPString"],
          ["emailNotification", "SOAP::SOAPBoolean"],
          ["enabled", "SOAP::SOAPBoolean"],
          ["fax", "SOAP::SOAPString"],
          ["firstName", "SOAP::SOAPString"],
          ["lastName", "SOAP::SOAPString"],
          ["password", "SOAP::SOAPString"],
          ["phone1", "SOAP::SOAPString"],
          ["phone2", "SOAP::SOAPString"],
          ["timeZone", "SOAP::SOAPString"],
          ["userName", "SOAP::SOAPString"],
          ["userType", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::TiUserInfo,
        :schema_type => XSD::QName.new(NsXsd, "TiUserInfo"),
        :schema_element => [
          ["languageDirections", "Glexchange::Pdws::LanguageDirection[]", [0, nil]],
          ["organizationId", "SOAP::SOAPLong"],
          ["projectRoles", "SOAP::SOAPString[]", [0, nil]],
          ["projectTicket", "SOAP::SOAPString[]", [0, nil]],
          ["systemRoles", "SOAP::SOAPString[]", [0, nil]],
          ["vendorId", "SOAP::SOAPLong"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ClaimScopeEnum,
        :schema_type => XSD::QName.new(NsXsd, "ClaimScopeEnum"),
        :schema_element => [
          ["name", "SOAP::SOAPString"],
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::ProjectCustomFieldConfiguration,
        :schema_type => XSD::QName.new(NsXsd, "ProjectCustomFieldConfiguration"),
        :schema_element => [
          ["description", "SOAP::SOAPString"],
          ["mandatory", "SOAP::SOAPBoolean"],
          ["name", "SOAP::SOAPString"],
          ["type", "SOAP::SOAPString"],
          ["values", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SubmissionCustomFields,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionCustomFields"),
        :schema_element => [
          ["fieldName", "SOAP::SOAPString"],
          ["fieldValue", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::UserProfile,
        :schema_type => XSD::QName.new(NsXsd, "UserProfile"),
        :schema_element => [
          ["availableTasks", "SOAP::SOAPInt"],
          ["organizationName", "SOAP::SOAPString"],
          ["systemRoles", "Glexchange::Pdws::Role[]", [0, nil]],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"],
          ["userInfo", "Glexchange::Pdws::UserInfo"],
          ["vendorName", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Role,
        :schema_type => XSD::QName.new(NsXsd, "Role"),
        :schema_element => [
          ["policies", "Glexchange::Pdws::Policy[]", [0, nil]],
          ["roleId", "SOAP::SOAPString"],
          ["roleType", "Glexchange::Pdws::RoleTypeEnum"],
          ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::RoleTypeEnum,
        :schema_type => XSD::QName.new(NsXsd, "RoleTypeEnum"),
        :schema_element => [
          ["value", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Policy,
        :schema_type => XSD::QName.new(NsXsd, "Policy"),
        :schema_element => [
          ["category", "SOAP::SOAPString"],
          ["policyId", "SOAP::SOAPString"],
          ["policyType", "Glexchange::Pdws::RoleTypeEnum"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::LanguageWorkflowInfo,
        :schema_type => XSD::QName.new(NsXsd, "LanguageWorkflowInfo"),
        :schema_element => [
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::BatchWorkflowInfo,
        :schema_type => XSD::QName.new(NsXsd, "BatchWorkflowInfo"),
        :schema_element => [
          ["batchName", "SOAP::SOAPString"],
          ["languageWorkflowInfo", "Glexchange::Pdws::LanguageWorkflowInfo"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::TargetWorkflowInfo,
        :schema_type => XSD::QName.new(NsXsd, "TargetWorkflowInfo"),
        :schema_element => [
          ["batchName", "SOAP::SOAPString"],
          ["documentName", "SOAP::SOAPString"],
          ["fileName", "SOAP::SOAPString"],
          ["sourceLanguage", "Glexchange::Pdws::Language"],
          ["targetLanguage", "Glexchange::Pdws::Language"],
          ["targetTicket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SubmissionWorkflowInfo,
        :schema_type => XSD::QName.new(NsXsd, "SubmissionWorkflowInfo"),
        :schema_element => [
          ["batchWorkflowInfos", "Glexchange::Pdws::BatchWorkflowInfo[]", [0, nil]],
          ["languageWorkflowInfos", "Glexchange::Pdws::LanguageWorkflowInfo[]", [0, nil]],
          ["phaseName", "SOAP::SOAPString"],
          ["submissionId", "SOAP::SOAPLong"],
          ["submissionName", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"],
          ["targetWorkflowInfos", "Glexchange::Pdws::TargetWorkflowInfo[]", [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::WorkflowRequest,
        :schema_type => XSD::QName.new(NsXsd, "WorkflowRequest"),
        :schema_element => [
          ["batchWorkflowInfos", "Glexchange::Pdws::BatchWorkflowInfo[]", [0, nil]],
          ["languageWorkflowInfos", "Glexchange::Pdws::LanguageWorkflowInfo[]", [0, nil]],
          ["phaseName", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"],
          ["targetWorkflowInfos", "Glexchange::Pdws::TargetWorkflowInfo[]", [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::WorkflowRequestTicket,
        :schema_type => XSD::QName.new(NsXsd, "WorkflowRequestTicket"),
        :schema_element => [
          ["message", "SOAP::SOAPString"],
          ["processTicket", "SOAP::SOAPString"],
          ["submissionTicket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DownloadActionResult,
        :schema_type => XSD::QName.new(NsXsd, "DownloadActionResult"),
        :schema_element => [
          ["message", "SOAP::SOAPString"],
          ["processingFinished", "SOAP::SOAPBoolean"],
          ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::UploadActionResult,
        :schema_type => XSD::QName.new(NsXsd, "UploadActionResult"),
        :schema_element => [
          ["messages", "SOAP::SOAPString[]", [0, nil]],
          ["processingFinished", "SOAP::SOAPBoolean"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DownloadCollateralResult,
        :schema_type => XSD::QName.new(NsXsd, "DownloadCollateralResult"),
        :schema_element => [
          ["errorMessages", "SOAP::SOAPString[]", [0, nil]],
          ["processingFinished", "SOAP::SOAPBoolean"],
          ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Base64Binary,
        :schema_type => XSD::QName.new(NsXmlmime, "base64Binary"),
        :schema_attribute => {
          XSD::QName.new(NsXmlmime, "contentType") => "SOAP::SOAPString"
        }
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::HexBinary,
        :schema_type => XSD::QName.new(NsXmlmime, "hexBinary"),
        :schema_attribute => {
          XSD::QName.new(NsXmlmime, "contentType") => "SOAP::SOAPString"
        }
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::CancelTargetByDocumentId,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "cancelTargetByDocumentId"),
        :schema_element => [
          ["documentId", "Glexchange::Pdws::DocumentTicket"],
          ["targetLocale", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::CancelTargetByDocumentIdResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "cancelTargetByDocumentIdResponse"),
        :schema_element => [
          ["v_return", ["SOAP::SOAPString", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::CancelTarget,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "cancelTarget"),
        :schema_element => [
          ["targetId", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::CancelTargetResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "cancelTargetResponse"),
        :schema_element => [
          ["v_return", ["SOAP::SOAPString", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DownloadTargetResource,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "downloadTargetResource"),
        :schema_element => [
          ["targetId", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DownloadTargetResourceResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "downloadTargetResourceResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::RepositoryItem", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DownloadTranslationPreview,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "downloadTranslationPreview"),
        :schema_element => [
          ["uuid", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::DownloadTranslationPreviewResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "downloadTranslationPreviewResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::PreviewResult", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::FindByTicket,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "findByTicket"),
        :schema_element => [
          ["ticket", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::FindByTicketResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "findByTicketResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::Target", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCompletedTargetsByDocuments,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCompletedTargetsByDocuments"),
        :schema_element => [
          ["documentTickets", "SOAP::SOAPString[]", [1, nil]],
          ["maxResults", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCompletedTargetsByDocumentsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCompletedTargetsByDocumentsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::Target[]", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")], [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCompletedTargetsByProjects,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCompletedTargetsByProjects"),
        :schema_element => [
          ["projectTickets", "SOAP::SOAPString[]", [1, nil]],
          ["maxResults", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCompletedTargetsByProjectsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCompletedTargetsByProjectsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::Target[]", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")], [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCompletedTargetsBySubmissions,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCompletedTargetsBySubmissions"),
        :schema_element => [
          ["submissionTickets", "SOAP::SOAPString[]", [1, nil]],
          ["maxResults", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCompletedTargetsBySubmissionsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCompletedTargetsBySubmissionsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::Target[]", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")], [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetLanguagePhaseInfo,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getLanguagePhaseInfo"),
        :schema_element => [
          ["submissionTicket", "SOAP::SOAPString"],
          ["batchName", "SOAP::SOAPString"],
          ["targetLanguage", "SOAP::SOAPString"],
          ["phaseName", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetLanguagePhaseInfoResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getLanguagePhaseInfoResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::LanguagePhaseInfo", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetPagedCompletedTargetsByProjects,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getPagedCompletedTargetsByProjects"),
        :schema_element => [
          ["projectTickets", "SOAP::SOAPString[]", [1, nil]],
          ["info", "Glexchange::Pdws::PagedListInfo"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetPagedCompletedTargetsByProjectsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getPagedCompletedTargetsByProjectsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::TargetPagedList", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetPagedCompletedTargetsBySubmissions,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getPagedCompletedTargetsBySubmissions"),
        :schema_element => [
          ["submissionTickets", "SOAP::SOAPString[]", [1, nil]],
          ["info", "Glexchange::Pdws::PagedListInfo"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetPagedCompletedTargetsBySubmissionsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getPagedCompletedTargetsBySubmissionsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::TargetPagedList", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::RequestTranslationPreview,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "requestTranslationPreview"),
        :schema_element => [
          ["targetId", "SOAP::SOAPString[]", [1, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::RequestTranslationPreviewResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "requestTranslationPreviewResponse"),
        :schema_element => [
          ["v_return", ["SOAP::SOAPString", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::Search,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "search"),
        :schema_element => [
          ["command", "Glexchange::Pdws::TargetSearchRequest"],
          ["info", "Glexchange::Pdws::PagedListInfo"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SearchResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "searchResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::TargetPagedList", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::BrowseTargetsByDocuments,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "browseTargetsByDocuments"),
        :schema_element => [
          ["documentTickets", "SOAP::SOAPString[]", [1, nil]],
          ["info", "Glexchange::Pdws::PagedListInfo"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::BrowseTargetsByDocumentsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "browseTargetsByDocumentsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::Target[]", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")], [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SendDownloadConfirmation,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "sendDownloadConfirmation"),
        :schema_element => [
          ["targetId", "SOAP::SOAPString"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::SendDownloadConfirmationResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "sendDownloadConfirmationResponse"),
        :schema_element => [
          ["v_return", ["SOAP::SOAPString", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCanceledTargetsByDocuments,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCanceledTargetsByDocuments"),
        :schema_element => [
          ["documentTickets", "SOAP::SOAPString[]", [1, nil]],
          ["maxResults", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCanceledTargetsByDocumentsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCanceledTargetsByDocumentsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::Target[]", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")], [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCanceledTargetsByProjects,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCanceledTargetsByProjects"),
        :schema_element => [
          ["projectTickets", "SOAP::SOAPString[]", [1, nil]],
          ["maxResults", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCanceledTargetsByProjectsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCanceledTargetsByProjectsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::Target[]", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")], [0, nil]]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCanceledTargetsBySubmissions,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCanceledTargetsBySubmissions"),
        :schema_element => [
          ["submissionTickets", "SOAP::SOAPString[]", [1, nil]],
          ["maxResults", "SOAP::SOAPInt"]
        ]
      )

      TargetLiteralRegistry.register(
        :class => Glexchange::Pdws::GetCanceledTargetsBySubmissionsResponse,
        :schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "getCanceledTargetsBySubmissionsResponse"),
        :schema_element => [
          ["v_return", ["Glexchange::Pdws::Target[]", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")], [0, nil]]
        ]
      )
    end
  end
end
