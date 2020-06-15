def myMax x, y
    if(x >= y)
        x
    else
        y
    end
end

a=ARGV[0].to_i
b=ARGV[1].to_i

puts myMax a, b