require "socket"

if %r{(.*)://([^/]*)/(.*)} =~ ARGV[0]
    proto=$1
    host=$2
    path=$3
    p [proto, host, path]
else 
    puts 'ARG error'
    exit
end
port=80

TCPSocket.open host, port do |sock|
    sock.puts "GET /#{path} HTTP/1.1"
    sock.puts "HOST: #{host}"
    sock.puts "Connection: close"   #コネクションをすぐに切りたい場合
    sock.puts ""

    while line=sock.gets
        puts line
    end
end
