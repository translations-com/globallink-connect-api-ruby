require 'glexchange/pdws/WorkflowService_4180.rb'
require 'glexchange/pdws/WorkflowService_4180MappingRegistry.rb'
require 'soap/rpc/driver'

module Glexchange
  module Pdws
    class WorkflowServicePortType < ::SOAP::RPC::Driver
      DefaultEndpointUrl = "http://localhost/services/WorkflowService_4180.WorkflowServiceHttpSoap11Endpoint"

      Methods = [
        [ "urn:checkDownloadAction",
          "checkDownloadAction",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "checkDownloadAction"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "checkDownloadActionResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:checkUploadAction",
          "checkUploadAction",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "checkUploadAction"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "checkUploadActionResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:claim",
          "claim",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "claim"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "claimResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:download",
          "download",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "download"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:downloadPreview",
          "downloadPreview",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadPreview"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadPreviewResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:findAvailableWorkflowInfosForClaim",
          "findAvailableWorkflowInfosForClaim",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findAvailableWorkflowInfosForClaim"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findAvailableWorkflowInfosForClaimResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:findAvailableWorkflowInfosForDownload",
          "findAvailableWorkflowInfosForDownload",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findAvailableWorkflowInfosForDownload"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findAvailableWorkflowInfosForDownloadResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:findAvailableWorkflowInfosForDownloadBySubmissionTickets",
          "findAvailableWorkflowInfosForDownloadBySubmissionTickets",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findAvailableWorkflowInfosForDownloadBySubmissionTickets"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findAvailableWorkflowInfosForDownloadBySubmissionTicketsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:upload",
          "upload",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "upload"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "uploadResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ]
      ]

      def initialize(endpoint_url = nil)
        endpoint_url ||= DefaultEndpointUrl
        super(endpoint_url, nil)
        self.mapping_registry = Glexchange::Pdws::WorkflowMappingRegistry::WorkflowEncodedRegistry
        self.literal_mapping_registry = Glexchange::Pdws::WorkflowMappingRegistry::WorkflowLiteralRegistry
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

