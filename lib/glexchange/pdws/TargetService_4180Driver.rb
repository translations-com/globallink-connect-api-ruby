require 'glexchange/pdws/TargetService_4180.rb'
require 'glexchange/pdws/TargetService_4180MappingRegistry.rb'
require 'soap/rpc/driver'

module Glexchange
  module Pdws
    class TargetServicePortType < ::SOAP::RPC::Driver
      DefaultEndpointUrl = "http://localhost/services/TargetService_4180.TargetServiceHttpSoap11Endpoint"

      Methods = [
        [ "urn:findByTicket",
          "findByTicket",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findByTicket"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findByTicketResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:cancelTarget",
          "cancelTarget",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "cancelTarget"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "cancelTargetResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:cancelTargetByDocumentId",
          "cancelTargetByDocumentId",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "cancelTargetByDocumentId"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "cancelTargetByDocumentIdResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getCompletedTargetsBySubmissions",
          "getCompletedTargetsBySubmissions",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCompletedTargetsBySubmissions"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCompletedTargetsBySubmissionsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getCompletedTargetsByProjects",
          "getCompletedTargetsByProjects",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCompletedTargetsByProjects"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCompletedTargetsByProjectsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getLanguagePhaseInfo",
          "getLanguagePhaseInfo",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getLanguagePhaseInfo"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getLanguagePhaseInfoResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getPagedCompletedTargetsBySubmissions",
          "getPagedCompletedTargetsBySubmissions",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getPagedCompletedTargetsBySubmissions"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getPagedCompletedTargetsBySubmissionsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getPagedCompletedTargetsByProjects",
          "getPagedCompletedTargetsByProjects",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getPagedCompletedTargetsByProjects"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getPagedCompletedTargetsByProjectsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:downloadTargetResource",
          "downloadTargetResource",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadTargetResource"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadTargetResourceResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:downloadTranslationPreview",
          "downloadTranslationPreview",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadTranslationPreview"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadTranslationPreviewResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:sendDownloadConfirmation",
          "sendDownloadConfirmation",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "sendDownloadConfirmation"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "sendDownloadConfirmationResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getCompletedTargetsByDocuments",
          "getCompletedTargetsByDocuments",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCompletedTargetsByDocuments"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCompletedTargetsByDocumentsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:requestTranslationPreview",
          "requestTranslationPreview",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "requestTranslationPreview"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "requestTranslationPreviewResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:search",
          "search",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "search"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "searchResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:search",
          "browseTargetsByDocuments",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "browseTargetsByDocuments"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "browseTargetsByDocumentsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getCanceledTargetsByDocuments",
          "getCanceledTargetsByDocuments",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCanceledTargetsByDocuments"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCanceledTargetsByDocumentsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getCanceledTargetsByProjects",
          "getCanceledTargetsByProjects",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCanceledTargetsByProjects"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCanceledTargetsByProjectsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getCanceledTargetsBySubmissions",
          "getCanceledTargetsBySubmissions",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCanceledTargetsBySubmissions"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCanceledTargetsBySubmissionsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ]
      ]

      def initialize(endpoint_url = nil)
        endpoint_url ||= DefaultEndpointUrl
        super(endpoint_url, nil)
        self.mapping_registry = Glexchange::Pdws::TargetMappingRegistry::TargetEncodedRegistry
        self.literal_mapping_registry = Glexchange::Pdws::TargetMappingRegistry::TargetLiteralRegistry
        init_methods
      end

    private

      def init_methods
        Methods.each do |definitions|
          opt = definitions.last
          if opt[:request_style] == :document
            add_document_operation(*definitions)
          else
            add_rpc_operation(*definitions)
            qname = definitions[0]
            name = definitions[2]
            if qname.name != name and qname.name.capitalize == name.capitalize
              ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
                __send__(name, *arg)
              end
            end
          end
        end
      end
    end
  end
end

