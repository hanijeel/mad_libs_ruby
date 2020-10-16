require './lib/classes'
ml = Madlib.new

puts "Hello user! Let's play a game of Mad Lib."
puts "Tell me a story. Surround keywords with []."
user_story = gets.chomp
input = ml.collect_inputs(user_story)
output = ml.update_string(user_story, input)
puts "Your story is below:"
puts output

=begin
story #1
I can't believe it is already [Holiday]! I can't wait to put on my [noun] visit every [place] in my neighborhood. This year, I am going to dress up as a [person] with [adjective] [body part (plural)]. Before I [verb], I make sure to grab my [adjecvtive] [noun] to hold all of my [food]. Finally, all of my [plural noun] are ready to go!
story #2
My uncle [noun(proper name)] is the [adjective] guy! He always [verb]s my birthday, though he can be a little [adjective] at my party. We have to [verb] him from [verb -ing] my friends' brains, but otherwise he's pretty [adjective]. He doesn't [verb] me any [adjective] gifts or eat any cake, because my uncle is a [noun]. It's pretty weird, I know.
=end