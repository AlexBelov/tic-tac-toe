class Field
	attr_accessor :field

	def initialize
		@field = [['*','*','*'], 
							['*','*','*'], 
							['*','*','*']]
	end

	def show
		@field.each do |line|
			line.each do |elem|
				print elem + ' '
			end
			print "\n"
		end
	end

	def transpose
		field = [[], [], []]

		i = 0
		while i < 3
			j = 0
			while j < 3
				field[j][i] = @field[i][j]
				j+=1
			end
			i+=1
		end

		field
	end

	def diag1
		diag = []
		i = 0

		while i < 3
			j = 0
			while j < 3
				diag << @field[i][j] if i == j
				j+=1
			end
			i+=1
		end

		diag
	end

	def diag2
		diag = []
		i = 0

		while i < 3
			j = 0
			while j < 3
				diag << @field[i][j] if i + j == 2
				j+=1
			end
			i+=1
		end
		
		diag
	end


end