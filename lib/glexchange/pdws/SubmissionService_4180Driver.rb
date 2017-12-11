require 'glexchange/pdws/SubmissionService_4180.rb'
require 'glexchange/pdws/SubmissionService_4180MappingRegistry.rb'
require 'soap/rpc/driver'

module Glexchange
  module Pdws
    class SubmissionServicePortType < ::SOAP::RPC::Driver
      DefaultEndpointUrl = "http://localhost/services/SubmissionService_4180.SubmissionServiceHttpSoap11Endpoint"

      Methods = [
        [ "urn:addReferenceAsText",
          "addReferenceAsText",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "addReferenceAsText"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "addReferenceAsTextResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:addSubmitter",
          "addSubmitter",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "addSubmitter"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "addSubmitterResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:cancelSubmission",
          "cancelSubmission",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "cancelSubmission"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "cancelSubmissionResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:cancelSubmissionWithComment",
          "cancelSubmissionWithComment",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "cancelSubmissionWithComment"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "cancelSubmissionWithCommentResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:checkDownloadDeliverableCollateral",
          "checkDownloadDeliverableCollateral",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "checkDownloadDeliverableCollateral"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "checkDownloadDeliverableCollateralResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:downloadDeliverableCollateralBySubmissionTicket",
          "downloadDeliverableCollateralBySubmissionTicket",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadDeliverableCollateralBySubmissionTicket"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadDeliverableCollateralBySubmissionTicketResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:downloadDeliverableCollateralBySubmissionTicketAndTargetLanguages",
          "downloadDeliverableCollateralBySubmissionTicketAndTargetLanguages",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadDeliverableCollateralBySubmissionTicketAndTargetLanguages"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "downloadDeliverableCollateralBySubmissionTicketAndTargetLanguagesResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:findById",
          "findById",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findById"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findByIdResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:findByTicket",
          "findByTicket",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findByTicket"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findByTicketResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:findCreatingSubmissionsByProjectShortCode",
          "findCreatingSubmissionsByProjectShortCode",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findCreatingSubmissionsByProjectShortCode"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findCreatingSubmissionsByProjectShortCodeResponse"]] ],
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
        [ "urn:searchSubmissions",
          "searchSubmissions",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "searchSubmissions"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "searchSubmissionsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:addOwner",
          "addOwner",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "addOwner"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "addOwnerResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:startSingleBatchSubmission",
          "startSingleBatchSubmission",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "startSingleBatchSubmission"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "startSingleBatchSubmissionResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:startSubmission",
          "startSubmission",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "startSubmission"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "startSubmissionResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:uploadReference",
          "uploadReference",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "uploadReference"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "uploadReferenceResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ]
      ]

      def initialize(endpoint_url = nil)
        endpoint_url ||= DefaultEndpointUrl
        super(endpoint_url, nil)
        self.mapping_registry = Glexchange::Pdws::SubmissionMappingRegistry::SubmissionEncodedRegistry
        self.literal_mapping_registry = Glexchange::Pdws::SubmissionMappingRegistry::SubmissionLiteralRegistry
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

