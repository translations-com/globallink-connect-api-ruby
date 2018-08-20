require 'glexchange/pdws/ProjectService_4180.rb'
require 'glexchange/pdws/ProjectService_4180MappingRegistry.rb'
require 'soap/rpc/driver'

module Glexchange
  module Pdws
    class ProjectServicePortType < ::SOAP::RPC::Driver
      DefaultEndpointUrl = "http://localhost/services/ProjectService_4180.ProjectServiceHttpSoap11Endpoint"

      Methods = [
        [ "urn:findByTicket",
          "findByTicket",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findByTicket"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findByTicketResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:findProjectByName",
          "findProjectByName",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findProjectByName"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findProjectByNameResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:findProjectByShortCode",
          "findProjectByShortCode",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findProjectByShortCode"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "findProjectByShortCodeResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getUserProjects",
          "getUserProjects",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getUserProjects"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getUserProjectsResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ]
      ]

      def initialize(endpoint_url = nil)
        endpoint_url ||= DefaultEndpointUrl
        super(endpoint_url, nil)
        self.mapping_registry = Glexchange::Pdws::ProjectMappingRegistry::ProjectEncodedRegistry
        self.literal_mapping_registry = Glexchange::Pdws::ProjectMappingRegistry::ProjectLiteralRegistry
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

