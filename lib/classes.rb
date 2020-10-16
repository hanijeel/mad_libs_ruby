class Madlib

   
    def find_keywords a_template #find keywords in a string
        #some variables
        keyword = ""
        keyword_array = Array.new
        in_bracket = false

        (0...a_template.length).each do |i| #loop as long as there is a character in the string
            
            if a_template[i] == "[" #when [ is found
                in_bracket = true  #turn on the switch
            end

                if in_bracket == true #when the switch is on
                    keyword += a_template[i] #store the found characters in the variable
                end

            if a_template [i] == "]"#when ] is found
                keyword_array << keyword #store the keyword in the array
                keyword = "" #reset the keyword variable
                in_bracket = false #turn off the switch
            end

        end
        keyword_array #return the array with keywords
    end

    def collect_inputs a_template #collect user inputs in an array
       
        before_keywords = find_keywords(a_template) #stores a keywords array from the find_keywords function
        after_keywords = Array.new

        (0...before_keywords.length).each do |i| #for every keyword in the array
            puts "What is a #{before_keywords[i]}?" #ask for user input
            answer = gets.chomp
            after_keywords << answer #store the input in the response array
        end

        return after_keywords #returns the array with user inputs
    end

    def update_string a_template, user_input #get the keywords array and user inputs array
       
        my_keywords = find_keywords(a_template) #store the keywords array in my_keywords
      
        (0...my_keywords.length).each do |i| #for every keyword in the array
            a_template = a_template.sub(my_keywords[i], user_input[i]) #replace it with user input
        end

        return a_template #return the updated string
    end

end