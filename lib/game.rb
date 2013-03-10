class Game
	def initialize
		@players = []
		@players.push Player.new "PlayerX", "X"
		@players.push Player.new "Player0", "0"
		@over = false
		@field = Field.new
		@winner = nil
	end

	def over?
		@field.field.each do |line|
			return @over = true if line == ['0','0','0'] or line == ['X','X','X']
		end
		@field.transpose.each do |line|
			return @over = true if line == ['0','0','0'] or line == ['X','X','X']
		end
		return @over = true if @field.diag1 == ['0','0','0'] or @field.diag1 == ['X','X','X']
		return @over = true if @field.diag2 == ['0','0','0'] or @field.diag2 == ['X','X','X']

		i = 0
		num = 0
		while i < 3
			j = 0
			while j < 3
				num+=1 if @field.field[i][j] != '*'
				j+=1
			end
			i+=1
		end

		return @over = true if num == 9

	end

	def winner
		@field.field.each do |line|
			return @winner = @players[1] if line == ['0','0','0'] 
			return @winner = @players[0] if line == ['X','X','X']
		end
		@field.transpose.each do |line|
			return @winner = @players[1] if line == ['0','0','0'] 
			return @winner = @players[0] if line == ['X','X','X']
		end
		return @winner = @players[0] if @field.diag1 == ['X','X','X'] or @field.diag2 == ['X','X','X']
		return @winner = @players[1] if @field.diag1 == ['0','0','0'] or @field.diag2 == ['0','0','0']
	end

	def play
		until @over
			@players.each do |player| 
				turn = Turn.new player, @field
				ans = turn.playerturn
				@field.field[ans[0]][ans[1]] = player.sym
				system("clear")
				@field.show
				over?
				break if @over == true 
				sleep(1.0/2.0)
			end
		end

		winner

		puts "Game winner if #{@winner.name}" if @winner
		puts "No winner" unless @winner
	end

end