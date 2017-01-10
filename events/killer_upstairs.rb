class Killer_Upstairs < Events::Base

	def enter(*decisions)
		@decision1,@decision2,@decision3 = decisions

		super()

#if upstairs
		if @decision2 =~ /Stay( where I am)?/
			puts "*SOMEONE'S COMING UPSTAIRS!*\n\n"
			puts "Close the door | Run to a different room"
			print @prompt; @decision4 = gets.chomp.capitalize

			until @decision4 =~ /(Close (the )?door)|(Run( to( a)? different room)?)/
				@decision4 = gets.chomp.capitalize
			end

			if @decision4 =~ /Run( to( a)? different room)?/
				puts "WHICH ROOM: My room | Parents' room | Bathroom | Sister's room"
				print @prompt; @decision5 = gets.chomp.capitalize

				until @decision5 =~ /(My( room)?)|(Sister('s)?( room)?)|(Parents(')?( room)?)|(Bathroom)/
					@decision5 = gets.chomp.capitalize
				end

				puts "*you ran inside the room and closed the door behind you*\n\n"
			elsif @decision4 =~ /Close (the )?door/
				puts "*you closed the door*\n\n"
			end

		elsif @decision3 == "Run upstairs"
			puts "*SOMEONE ELSE IS COMING UP THE STEPS ALSO*\n\n"
			puts "GO TO WHICH ROOM: My room | Parents' room | Bathroom | Sister's room"
			print @prompt; @decision5 = gets.chomp.capitalize

			until @decision5 =~ /(My( room)?)|(Sister('s)?( room)?)|(Parents(')?( room)?)|(Bathroom)/
				@decision5 = gets.chomp.capitalize
			end

			puts "*you ran inside the room and closed the door behind you*\n\n"
		end

		[@decision1,@decision2,@decision3,@decision4,@decision5, "Liberty Vs Death"]
	end
end