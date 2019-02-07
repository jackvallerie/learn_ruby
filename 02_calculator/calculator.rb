#write your code here

def add a, b
    return a + b
end

def subtract a, b
    return a - b
end

def sum input
    final_sum = 0
    input.each do |x|
        final_sum += x
    end
    return final_sum
end

def multiply a, b
    return a * b
end

def power a, b
    return a ** b
end

def factorial num
    if num == 0
        return 0
    else
        output = 1
        while num > 0
            output *= num
            num -= 1
        end
        return output
    end 
end