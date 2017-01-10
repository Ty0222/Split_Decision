class The_Big_Decision < Events::Base

	def enter(*decisions)
		@decision1,@decision2 = decisions

		super()

#if downstairs
		if (@decision1.include?("stairs")) || (@decision2 =~ /Run( downstairs)?/)
			puts "*THERE'S SOMEONE WITH A KNIFE DOWNSTAIRS*\n\n"
			puts "Run upstairs | Run past the kitchen and into the living room"
			print @prompt; @decision3 = gets.chomp.capitalize
			
			until @decision3 =~ /Run upstairs|Run past the kitchen (and into the living room)?/
				@decision3 = gets.chomp.capitalize	
			end
		end


		[@decision1,@decision2,@decision3, "Killer Upstairs"]
	end
end