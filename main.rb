dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(words_array, dictionary)
    found_var_array = []
    words_array.each do |word|

        word = word.downcase
        dictionary.each do |word_inside|

            if dictionary.include?(word) || word.include?(word_inside)

                if word.include?(word_inside) 
                   found_var_array << word_inside
                end
            end
        end    
    end

    the_hash = found_var_array.reduce(Hash.new(0)) do |result, occurrence|
        result[occurrence] += 1
        result 
    end

    print "the hash#{the_hash}\n\n"
end

print "Enter some text: "
words = gets.chomp
words_array = words.split(" ")

sub_strings(words_array, dictionary)
