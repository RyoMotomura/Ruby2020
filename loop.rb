# 5回繰り返し
i=0
while i < 5
    puts i
    i+=1
end

n=3
# 5.times do |i|
n.times do |i|
    puts i
end

i=0
while true
    puts i
    if i>=4
        break
    end
    i+=1
end

i=0
while true
    puts i if i%2==0
    break if i>=4
    i+=1
end

i=0
loop do
    puts i
    break if i>=4
    i+=1
end
