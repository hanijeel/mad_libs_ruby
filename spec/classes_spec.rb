require './lib/classes'

=begin
    Tests to-do 
    -one sentence with one keyword
        V find open bracket ([)
        V find close bracket(])
        V grab and return the word inside the []
        V replace the keyword with user input
    -one template with many keywords
        V put it in a loop
    -many templates 
        V choose a template and run the loop 
=end

describe Madlib do
    it "class Madlib exists" do
        expect(true).to eql(true)
    end
    
    let (:ml) {Madlib.new}

    context "one keyword in one sentence" do
        it "returns [verb] when given 'You can [verb].'" do
            my_sentence = "You can [verb]."
            result = ml.find_keywords(my_sentence)
            expect(result).to eql(["[verb]"])
        end

        it "given 'You can [verb].' returns 'You can kick.'" do
            my_sentence = "You can [verb]."
            my_word = ["kick"]
            result = ml.update_string(my_sentence, my_word)
            expect(result).to eql("You can kick.")
        end

    end

    context "two keywords in one sentence" do
        it "returns ['[verb]', '[noun]'] when given 'You can [verb] the [noun].'" do
            my_sentence = "You can [verb] the [noun]."
            result = ml.find_keywords(my_sentence)
            expect(result).to eql(["[verb]", "[noun]"])
        end

        # #collect_input function cannot be tested because of 'get.chomp' built within.
        # it "given 'You can [verb] the [noun].' returns ['[kick]','[baby]']" do
        #     my_sentence = "You can [verb] the [noun]."
        #     # my_words = ["kick", "baby"]
        #     result = ml.collect_inputs(my_sentence)
        #     expect(result).to eql(["kick", "baby"])
        # end

        it "returns 'Hello, dragon.' when given '[greetings], [creature].'" do
            my_sentence = "[greetings], [creature]."
            my_keywords = ["hello","dragon"]
            result = ml.update_string(my_sentence, my_keywords)
            expect(result).to eql("hello, dragon.")
        end
        
    end

end

