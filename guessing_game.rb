	number_gen = rand(1..100)
	num_guesses = 0

	puts "Take a guess at what the number will be!"
	print "Enter Guess Now!  "
	guess = gets.chomp

	while guess.to_i != number_gen do

  			if guess.to_i > number_gen
				puts "Too High, Try again."
				num_guesses += 1
				guess = gets.chomp

			elsif guess.to_i < number_gen
				puts "Too Low, Try again."
				num_guesses += 1
				guess = gets.chomp

			elsif guess.to_i == number_gen
				puts "You Got IT"
				
			end
	end
			

