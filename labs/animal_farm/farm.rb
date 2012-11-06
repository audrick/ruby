class Farm
	attr_accessor :name, :people, :animals

	def initialize(n)
		@name = n
		@people = []
		@animals = []
	end

	def to_s
		"#{name}"
	end
end