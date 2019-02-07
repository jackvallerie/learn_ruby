#write your code here

def translate input
    words = input.split
    last_word = words.slice!(-1)
    output = ""
    words.each do |word|
        output += translate_word(word) + " "
    end
    output += translate_word(last_word)
    return output
end

def is_vowel? letter
    return "aeiou".include?(letter)
end

def translate_word input
    if is_vowel?(input[0])
        return input + "ay"
    else
        if is_vowel?(input[1])
            return one_consonant_translate(input)
        else
            return two_consonant_translate(input)
        end
    end
end


def one_consonant_translate input
    first_letter = input.slice!(0)
    suffix = first_letter + "ay"
    return input + suffix
end

def two_consonant_translate input
    first_two_letters = input.slice!(0..1)
    suffix = first_two_letters + "ay"
    return input + suffix
end