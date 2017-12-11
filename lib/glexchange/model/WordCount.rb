module Glexchange
	module Model
		class PDWordCount 
			attr_accessor :golden
			attr_accessor :exact_100
			attr_accessor :fuzzy
			attr_accessor :repetitions
			attr_accessor :nomatch
			attr_accessor :total
			def initialize(golden, exact_100, repetitions, nomatch, total) 
				@golden = golden;
				@exact_100 = exact_100;
				@repetitions = repetitions;
				@nomatch = nomatch;
				@total = total;
			end
		end
	end
end