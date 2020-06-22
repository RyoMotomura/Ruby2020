f = open "readwrite.rb", "r"  # read のみの r

while line = f.gets
    puts line
end

f.close
