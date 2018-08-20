require 'glexchange/pdws/UserProfileService_4180.rb'
require 'glexchange/pdws/UserProfileService_4180MappingRegistry.rb'
require 'soap/rpc/driver'

module Glexchange
  module Pdws
    class UserProfileServicePortType < ::SOAP::RPC::Driver
      DefaultEndpointUrl = "http://localhost/services/UserProfileService_4180.UserProfileServiceHttpSoap11Endpoint"

      Methods = [
        [ "urn:getSubmitters",
          "getSubmitters",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getSubmitters"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getSubmittersResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:createUser",
          "createUser",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "createUser"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "createUserResponse"]] ],
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
        [ "urn:getCurrentUserLanguages",
          "getCurrentUserLanguages",
          [ [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getCurrentUserLanguagesResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ],
        [ "urn:getUserLanguages",
          "getUserLanguages",
          [ [:in, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getUserLanguages"]],
            [:out, "parameters", ["::SOAP::SOAPElement", "http://impl.services.service.ws.projectdirector.gs4tr.org", "getUserLanguagesResponse"]] ],
          { :request_style =>  :document, :request_use =>  :literal,
            :response_style => :document, :response_use => :literal,
            :faults => {} }
        ]
      ]

      def initialize(endpoint_url = nil)
        endpoint_url ||= DefaultEndpointUrl
        super(endpoint_url, nil)
        self.mapping_registry = Glexchange::Pdws::UserProfileMappingRegistry::UserProfileEncodedRegistry
        self.literal_mapping_registry = Glexchange::Pdws::UserProfileMappingRegistry::UserProfileLiteralRegistry
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

