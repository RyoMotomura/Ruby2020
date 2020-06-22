n = gets.to_i

open "rubyout.txt", "w" do |f|
    n.times do
        f.puts "Ruby"
    end
end
