QUESTIONS = [
	{
		:name => "What is the command to create a new git repo",
		:answers => [
			'git new',
			'git init',
			'new git repo',
			'create-github'
					],
		:correct_answer => 3
	},
	{
			:name => "What is my favorite sushi",
			:answers => [
				'Cali Roll',
				'Spicy Tuna Roll',
				'Sweet Potato Roll',
				'Tokyo Roll'
						],
			:correct_answer => 4

	},
	{ 			
			:name => "How many chairs are in this room",
			:answers => [
				10,
				1,
				11,
				9
						],
			:correct_answer => 2
	}
	{
			:name => "What is the greatest profession",
			:answers => [
				"Ninja",
				"Pirate",
				"Bartender",
				"Rocket Man"
						],
			:correct_answer => 4
	}
	{
			:name => "What is the best vehicle",
			:answers => [
				"Tank",
				"Jet",
				"Mother Ship",
				"Death Star"
						]
	}
]

answers_right = 0

puts "Welcome to the quiz show!".upcase
puts "-" * 30

QUESTIONS.each do |question|
	puts "-" * 25
	puts question[:name] + "? :"
	question[:answers].each_with_index do |answer,index|
		puts "#{index + 1} #{answer}"
	end

	print 'Enter answer 1 through 4!'
	response = gets


	if response.to_i  == question[:correct_answer]
		puts "CORRECT!"
		right += 1
	else
		puts "INCORRECT!"
		puts "\7"
	
	end
end

puts "You got #{answers_right} out of #{QUESTIONS.count} correct"
