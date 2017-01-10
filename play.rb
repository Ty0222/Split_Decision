Dir["#{__dir__}/**/*.rb"].each { |file| require file }

the_map = Map.new("The Break In")
the_engine = Engine.new(the_map)
the_engine.play