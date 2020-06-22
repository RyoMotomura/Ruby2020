fname = gets.chomp

i=1;
open fname, 'r' do |f|
    while line = f.gets
        puts i.to_s + ": " + line
        # puts "#{i}: #{line}"
        i = i + 1
        # i+=1
    end
end