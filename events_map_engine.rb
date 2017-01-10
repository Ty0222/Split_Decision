class Engine
	
	def initialize(events_map)
		@events_map = events_map
	end

	def play
		current_event = @events_map.opening_event

		for i in 0..4
		*decisions, next_event_name = current_event.enter(*decisions||=nil)
		current_event = @events_map.next_event(next_event_name)
		end
	end
end

class Map

	@@events = {
		"The Break In" => The_Break_In.new,
		"Intruder Alert" => Intruder_Alert.new,
		"The Big Decision" => The_Big_Decision.new,
		"Killer Upstairs" => Killer_Upstairs.new,
		"Liberty Vs Death" => Liberty_Vs_Death.new,
	}

	def initialize(start_event)
		@start_event = start_event
	end

	def next_event(event_name)
		val = @@events[event_name]
		return val
	end

	def opening_event
		return next_event(@start_event)
	end
end