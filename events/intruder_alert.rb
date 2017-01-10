class Intruder_Alert < Events::Base

	def enter(decision)
		@decision1 = decision

		super()

		if @decision1 == "Downstairs"
			puts "*you begin walking downstairs*\n\n"
		end

		pause
		puts "*you hear sounds coming from the kitchen*\n\n"
		puts "...\n..."
		pause
		puts "*you hear the opening of a drawer*\n\n"

#if upstairs		
		if @decision1 != "Downstairs"
			puts "Stay where I am | Run downstairs"
			print @prompt; @decision2 = gets.chomp.capitalize

			until @decision2 =~ /Stay( where I am)?|Run( downstairs)?/
				@decision2 = gets.chomp.capitalize
			end

			if @decision2 =~ /Run( downstairs)?/ && @decision1 == "Bathroom"
				puts "*you and the dog begin walking downstairs*\n\n"
			end
		end

		[@decision1,@decision2, "The Big Decision"]
	end
end