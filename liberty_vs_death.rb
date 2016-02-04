class Liberty_Vs_Death < Event

	def enter(*decisions)
		@decision1,@decision2,@decision3,@decision4,@decision5 = decisions

		super()

#if downstairs
		if @decision3 =~ /Run past the kitchen (and into the living room)?/
			puts "*you ran to the living room behind a couch*\n\n"
			puts "*THEY ARE HEADED UPSTAIRS*\n\n"
			puts "...\n..."
			puts "WHAT SHOULD YOU DO: ..........."
			puts "*AHHHHHHHHHHHH*\n\n"
			puts "*your mother screams in horror*\n\n"
			puts "Leave family behind | "
			print @prompt; @decision6 = gets.chomp.capitalize

			until @decision6 =~ /Leave( family)?( behind)?/
				@decision6 = gets.chomp.capitalize
			end

			if @decision6 =~ /Leave( family)?( behind)?/
				puts "*you head for the door*\n\n"
				puts "*an upstairs window shatters as you leave the house*\n\n"
				puts "*you hear another scream*\n\n"
				puts "*it's your little sister*\n\n"

				if @decision6 =~ /Leave( family)?( behind)?/ && @decision1 == "Bathroom"
					puts "*at least you and the dog aren't dead*\n\n"
					puts "GAME OVER"
					exit
				else
					puts "*your family is dead*\n\n"
					puts "*at least you made it out alive*\n\n"
					puts "GAME OVER"
					exit
				end
			end
		end

		if @decision5 =~ /My( room)?/ || (@decision4 =~ /Close (the )?door/ && @decision1 =~ /((Stay in( my)? room)|(Parents(')?( room)?)|(Sister('s)? room)?)/)
			puts "*the sound of footsteps are getting louder*\n\n"
			puts "...\n..."
			puts "*THE INTUDER BREAKS INTO YOUR ROOM WITH HIS KNIFE*\n\n"
			puts "Try to escape | Fight Intruder"
			print @prompt; @death = gets.chomp.capitalize
			puts "...\n..."
			puts "*The intruder swings his blade across your fa....\n...\n..."
			puts "*you're dead*\n\n"
			puts "GAME OVER"
			exit
		elsif @decision5 =~ /Sister('s)?( room)?/
			puts "\"Hey what the heck is going on?\"\n\n"
			puts "TELL HER: Be quiet | Someone's trying to kill us"
			print @prompt; @talk = gets.chomp.capitalize

			until @talk =~ /((Be )?(Quiet|quiet))|(Someone('s| is) trying to kill us)/
				@talk = gets.chomp.capitalize
			end

			if @talk =~ /(Be )?(Quiet|quiet)/
				puts "\"Ok..ok but why are you sweating?\""
				puts "You're really being weir-...\n\n"
			elsif @talk =~ /Someone('s| is) trying to kill us/
				puts "\"OMG..OMG..\n..who and WHY?!\"\n\"BE QUIET\n...I...think I hear..\"\n\n"
			end

			pause
			puts "*the sound of footsteps are getting louder*\n\n"
			puts "*AHHHHHHHHHHHH*\n\n"
			puts "*your mother screams in horror*\n\n"

			if @decision5 =~ /Sister('s)?( room)?/ && @decision1 == "Bathroom"
				puts "Hide in the closet | Try to escape house with sister & dog"
				print @prompt; @decision7 = gets.chomp.capitalize

				until @decision7 =~ /(Hide( in( the)? closet)?)|((Try to )?(Escape|escape)( house with sister (&|and) dog)?)/
					@decision7 = gets.chomp.capitalize
				end

				if @decision7 =~ /Hide( in( the)? closet)?/
					puts "*THE INTUDER BREAKS INTO THE ROOM WITH HIS KNIFE*\n\n"
					puts "Try to escape | Fight Intruder"
					print @prompt; @death = gets.chomp.capitalize
					puts "...\n..."
					puts "*The intruder swings his blade across your fa....\n...\n..."
					puts "*you're dead*\n\n"
					puts "GAME OVER"
					exit
				elsif @decision7 =~ /(Try to )?(Escape|escape)( house with sister (&|and) dog)?/
					puts "*you all sprint downstairs and out the front door*\n\n"
					puts "*your parents are both dead*\n\n"
					puts "*at least you won't feel guilty alone*\n\n"
					puts "......"
					puts "GAME OVER"
					exit
				end

			elsif @decision5 =~ /Sister('s)?( room)?/
				puts "Hide in the closet | Try to escape house with sister"
				print @prompt; @decision7 = gets.chomp.capitalize

				until @decision7 =~ /(Hide( in( the)? closet)?)|((Try to )?(Escape|escape)( house with sister)?)/
					@decision7 = gets.chomp.capitalize
				end

				if @decision7 =~ /Hide( in( the)? closet)?/
					puts "*THE INTUDER BREAKS INTO THE ROOM WITH HIS KNIFE*\n\n"
					puts "Try to escape | Fight Intruder"
					print @prompt; @death = gets.chomp.capitalize
					puts "...\n..."
					puts "*The intruder swings his blade across your fa....\n...\n..."
					puts "*you're dead*\n\n"
					puts "GAME OVER"
					exit
				elsif @decision7 =~ /(Try to )?(Escape|escape)( house with sister)?/
					puts "*you all sprint downstairs and out the front door*\n\n"
					puts "*your parents are both dead*\n\n"
					puts "*at least you won't feel guilty alone*\n\n"
					puts "......"
					puts "GAME OVER"
					exit
				end
			end

		elsif @decision5 == "Bathroom" || (@decision4 =~ /Close (the )?door/ && @decision1 == "Bathroom")
			puts "*the sound of footsteps are getting louder*\n\n"
			puts "*AHHHHHHHHHHHH*\n\n"
			puts "*your mother screams in horror*\n\n"
			puts "Stay and hide | Try to escape house with dog"
			print @prompt; @decision8 = gets.chomp.capitalize

			until @decision8 =~ /((Try to )?(Escape|escape)( house with( the)? dog)?)|((Stay|Hide|Stay and hide))/
				@decision8 = gets.chomp.capitalize
			end

			if @decision8 =~ /(Try to )?(Escape|escape)( house with( the)? dog)?/
				puts "*you and the dog both run downstairs and out the front door*\n\n"
				puts "*an upstairs window shatters as you leave the house*\n\n"
				puts "*you hear another scream*\n\n"
				puts "*it's your little sister*\n\n"
				puts "*everyone is dead, except you and the ex-family dog*\n\n"
				puts "*at least you won't feel guilty alone*\n\n"
				puts "......"
				puts "GAME OVER"
				exit
			elsif @decision8 =~ /(Stay|Hide|Stay and hide)/
				puts "*THE INTUDER BREAKS INTO THE ROOM WITH HIS KNIFE*\n\n"
				puts "Try to escape | Fight Intruder"
				print @prompt; @death = gets.chomp.capitalize
				puts "...\n..."
				puts "The intruder swings his blade across your fa....\n...\n..."
				puts "*you're dead*\n\n"
				puts "GAME OVER"
				exit
			end

		elsif @decision5 =~ /Parents(')?( room)?/
			puts "\"Hey what are doing back in here?\"\n\n"
			puts "Warn them | Hide behind bed"
			print @prompt; @decision9 = gets.chomp.capitalize;

			until @decision9 =~ /Warn( them)?|Hide( behind bed)?/
				@decision9 = gets.chomp.capitalize
			end

			if @decision9 =~ /Warn( them)?/
				puts "*the sound of footsteps are getting louder*\n\n"
				puts "\"Wait...what?\"\n\n..."
			elsif @decision9 =~ /Hide( behind bed)?/
				puts "*the sound of footsteps are getting louder*\n\n"
				puts "\"What are you doing behind ou-...\"\n\n"
			end
			
			puts "*your parents' door opens*\n\n"
			puts "*you hear your mother scream in horror\n.."
			pause
			puts "as a man slashes your mother in her face*\n\n"
			puts "...\n..."
			puts "*your dad is struggling with the intruder*\n\n"
			puts "\"Grab my gun!\""
			puts "Hide | Grab dad's gun"
			print @prompt; @decision10 = gets.chomp.capitalize; 

			until @decision10 =~ /(Hide)|(Grab( dad(')?(s)?)? gun)/
				@decision10 = gets.chomp.capitalize
			end

			if @decision10 =~ /Hide/
				puts "*the intruder sliced open your father's throat*\n\n"
				puts "Try to escape | Fight Intruder"
				print @prompt; @death = gets.chomp.capitalize
				puts "...\n..."
				puts "*The intruder swings his blade across your fa....\n...\n..."
				puts "*you're dead*\n\n"
				puts "GAME OVER"
				exit
			elsif @decision10 =~ /Grab( dad(')?(s)?)? gun/
				puts "*IT'S LOCKED!*\n\n"

				if @decision1 == "Bathroom"
					puts "*the dog jumps and atacks the intruder*\n\n"
					puts "What's the 3 digit combination:"
					print @prompt; @random_combo = gets.chomp

					until @random_combo =~ /\d\d\d/
						@random_combo = gets.chomp
					end

					puts "*it's unlocked!*\n\n"
					puts "Press [enter] to fire weapon at intruder"
					print @prompt; @fire = gets.chomp.capitalize
					puts "*shot fired*\n\n"
					puts "*the intruder is down but..."
					pause
					puts "...\n...\n*your mother has died*\n\n"
					puts "*your father just dialed 911*\n...\n..."
					pause
					puts "GAME OVER"
					exit
				else
					puts "...\n\n"
					puts "Try to escape | Fight Intruder"
					print @prompt; @death = gets.chomp.capitalize
					puts "...\n..."
					puts "*The intruder swings his blade across your fa....\n...\n..."
					puts "*you're dead*\n\n"
					puts "GAME OVER"
					exit
				end
			end
		end
	end
end