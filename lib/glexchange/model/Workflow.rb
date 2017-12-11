module Glexchange
	module Model
		class PDWorkflow

			attr_accessor :name;
			attr_accessor :ticket;

			def initialize(externalWorkflow)
				@name = externalWorkflow.name;
				@ticket = externalWorkflow.ticket;
			end
		end
	end
end
