class Event
	
	def enter
		@prompt = "> "
	end

	def pause
		print "\n[press enter]"
		gets.chomp
		print "\n"
	end
end