require 'pry-byebug'
# Pseudocode is what to do => Problem solving is how to do.

# Create variables; word, dictionary. #
# The word is split in an array of chars
# Both are sent to the method as arguments
binding.pry


dictionary = ["to", "be", "or", "not", "below"]
# What happpens in the method? #
# Iterate through word_array with an each loop

def sub_strings(word_array, dictionary)
    binding.pry
    found_var_array = []
    stack_letters = ""
    word_array.each do |letter|
        
        
        stack_letters += letter
        binding.pry
        
        if dictionary.include?(stack_letters)
            found_var_array << stack_letters
        end

    end
    binding.pry
    
    the_hash = found_var_array.reduce(Hash.new(0)) do |result, occurrence|
        result[occurrence] +=1
        result
    end
    binding.pry
    print "#{the_hash}\n"
end
binding.pry

word = gets.chomp
word_array = word.split("")

sub_strings(word_array, dictionary)



# What happens in the each loop? #
# Create variables; stack_letters, found_var_array

# Those will iterate over one word
# dictionary.include?(stack_letters) => if true
# give the stack_letters to found_var_array

# Then found_var_array.reduce(Hash.new(0))
# Print the result

