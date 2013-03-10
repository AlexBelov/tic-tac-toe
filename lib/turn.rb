class Turn
	def initialize player, field
		@player = player
		@field = field
	end

	def playerturn
		bool = false
		until bool == true
			i = rand(0..2)
			j = rand(0..2)
			if @field.field[i][j] == '*'
				ans = [i,j]
				return ans
			else
				bool = false
			end
		end
	end
end