class The_Break_In <Event

	def enter(decision = nil)
		super()

		puts "It's late...everyone home is sound asleep \n"
		puts "You've been awake for hours now, ever since your little sister asked to borrow a movie from your room\n"
		puts "You begin to finally start falling asleep........\nhuh..."
		pause
		puts "*faint rumbling sound*\n\n WHAT DO YOU DO?"
		puts "Say something | Keep quiet:"
		print @prompt; @something = gets.chomp.capitalize
		puts "HELLO!\n Who could be awake this late at night?" if @something == "Say something"
		pause
		puts "*a door faintly closes downstairs*\n\n"
		puts "Who could possibly be coming home this late?\n\n*checking the alarm clock for the time*\n\n"
		puts "The alarm clock shows..."
		pause
		puts  "3 AM"
		pause
		puts "Is someone walking around downstairs?\n\n"
		puts "WHERE SHOULD YOU GO: Parents' room | Sister's room | Bathroom | Downstairs | Stay in my room"
		print @prompt; @decision1 = gets.chomp.capitalize

		until @decision1 =~ /((Sister(')?(s)?(')?)|(Parent(')?(s)?(')?))( room)?|(Bathroom)|(Downstairs)|(Stay in( my)? room)/
			@decision1 = gets.chomp.capitalize
		end

		puts case @decision1
		when /((Sister(')?(s)?(')?)|(Parent(')?(s)?(')?))( room)?/
			"*walking towards room*\n\n\"Go back to sleep!\"\n\n*you begin going back to your room*\n\n"
		when "Bathroom"
			"*panting*...\n...\n*your dog begins licking your face, he's happy to see you!*\n\n"
		when /(Downstairs)|(Stay in( my)? room)/
			"*you hear footsteps coming from the living room*\n\n"
		end
		
		[@decision1, "Intruder Alert"]
	end
end