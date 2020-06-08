status = {}
# status = Hash.new 別の書き方
status["name"] = "ryo"
status["hp"] = 10
status["mp"] = 5
status["job"] = "fighter"

puts "name:" + status["name"]
puts "hp:" + status["hp"].to_s

st = {
    "name" => "ryo",
    "hp" => 10,
    "mp" => 5,
    "job" => "fighter"
}

puts "name:" + st["name"]
puts "hp:" + st["hp"].to_s

st1 = {
    :name => "ryo",
    :hp => 10,
    :mp => 5,
    :job => "fighter"
}

puts "name:" + st1[:name]
puts "hp:" + st1[:hp].to_s

st2 = {
    name: "ryo",
    hp: 10,
    mp: 5,
    job: "fighter"
}

puts "name:" + st2[:name]
puts "hp:" + st2[:hp].to_s

st1.each do |k, v|
    puts k.to_s + ":" + v.to_s
end
