require 'soap/header/simplehandler'
module Glexchange
	module Header
		class WsseAuthHeader < SOAP::Header::SimpleHandler
		  NAMESPACE = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
		  @USERNAME
		  @PASSWORD
		  def initialize(username, password)
			super(XSD::QName.new(NAMESPACE, 'Security'))
			@USERNAME=username
			@PASSWORD=password
		  end
		  def on_simple_outbound
			{"UsernameToken" => {"Username" => @USERNAME, "Password" => @PASSWORD}}
		  end
		end

		class WsseUserAgentHeader < SOAP::Header::SimpleHandler
			NAMESPACE = 'http://commons.ws.projectdirector.gs4tr.org'
			def initialize (value = 'glc.ruby')
				super(XSD::QName.new(NAMESPACE, 'userAgent'))
					@element = 'userAgent'
					@value   = value
			end

			def on_simple_outbound
				@value
			end
		end
	end
end