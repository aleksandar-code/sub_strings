# Pseudocode is what to do => Problem solving is how to do.

# Create variables; word, dictionary. #
# The word is split in an array of chars
# Both are sent to the method as arguments
word = "not"
dictionary = ["to", "be", "or", "not"]
word_array = word.split("")
# What happpens in the method? #
# Iterate through word_array with an each loop
def sub_strings(word_array, dictionary)
    word_array.each do |letter|
        

# What happens in the each loop? #
# Create variables; stack_letters, found_var_array

# Those will iterate over one word
# dictionary.include?(stack_letters) => if true
# give the stack_letters to found_var_array

# Then found_var_array.reduce(Hash.new(0))
# Print the result

