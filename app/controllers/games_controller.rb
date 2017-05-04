class GamesController < ApplicationController
	def game
		
		@name = params["your_name"].upcase

		name_split = @name.split("")

		@name_alphabet = name_split
		if name_split[0] == "A"
			@name_alphabet = "Hey your name starts with the first letter of the alphabet!"
		end 

		# if @name.starts_with?("A")
		# 	@message = "Hey your name starts with the first letter of the alphabet!"
		# end
# or
		# if @name[0] == "A"
		# 	@message = "Hey your name starts with the first letter of the alphabet"
		# end

	end

	def guess
		@user_guess = params["submission"].to_i
		winning_number = 42

		if winning_number < @user_guess
			@answer_message = "too high."
		elsif winning_number >@user_guess
			@answer_message = "too low."
		elsif 
			@answer_message = "right on the money!!!"
		end
	end

	def url_segment
		@message = params["this_is_a_key"]
	end

	def guess_num
		@your_guess = params["number"]
	end

	def random_info
		@your_name = params["name"]
	end

end


