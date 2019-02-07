class Book
    attr_accessor :title

    def title=(input)
        @title = capitalize_title(input)
    end

    def capitalize_title title
        words = title.split
        capitalized_words = capitalize_words(words)
        final_title = build_title(capitalized_words)
        return final_title
    end

    def capitalize_words words
        first_word = words.slice!(0)
        first_word.capitalize!

        articles = ["the", "a", "an"]
        conjunctions = ["and", "or"]
        prepositions = ["in", "of"]

        words.map! do |word|
            if articles.include?(word)
                word
            elsif conjunctions.include?(word)
                word
            elsif prepositions.include?(word)
                word
            else word.capitalize
            end
        end

        words.unshift(first_word)
        return words
    end

    def build_title words
        output = ""
        last_word = words.slice!(-1)
        words.each do |word| output += word + " " end
        output += last_word

        return output
    end

end