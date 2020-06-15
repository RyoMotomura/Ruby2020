def fact x
    answer = 1
    x.times do |i|
        answer*=(x-i)
    end
    answer
end

a=10
# a=1000
x=fact a
puts x

def factR n
    if n == 0
        1
    else
        n * factR(n-1)
    end
end

puts factR a
