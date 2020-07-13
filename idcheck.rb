# 引数(ARGV[0])が 20GJK59 だったら toshi と表示

id = ARGV[0]

if("20GJK59" == id)
    puts "toshi"
end

# 引数が ??GJK?? だったら GJK と表示
 
ch = id.split ""
if ch[2] == 'G' && ch[3] == 'J' && ch[4]
    puts 'GJK'
end

# 正規表現
if /^(\d\d)GJK(..)$/ =~ id
    year = $1
    num = $2
    puts year + '入学GJK'
end
