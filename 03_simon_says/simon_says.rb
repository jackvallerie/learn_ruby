#write your code here

def echo input
    return input
end

def shout input
    return input.upcase
end

def repeat input, num_repeats=nil
    if num_repeats != nil
        output = ""
        while num_repeats > 1
            output += input + " "
            num_repeats -= 1
        end
        output += input
        return output
    else
        return input + " " + input
    end
end
    
def start_of_word input, num_letters=nil
    if num_letters == nil
        return input[0]
    else
        return input[0..(num_letters-1)]
    end
end

def first_word input
    input = input.split
    return input[0]
end

def titleize input
    words = input.split
    words.map! do |word| word.capitalize end
    output = ""
    last_word = words.slice!(-1)
    words.each do |word| output += word + " " end
    output += last_word
    return output
end