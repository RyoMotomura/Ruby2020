require "socket"

host=ARGV[0]
port=80
path=ARGV[1]

body = false

TCPSocket.open host, port do |sock|
    sock.puts "GET #{path} HTTP/1.1"
    sock.puts "HOST: #{host}"
    sock.puts "Connection: close"   #コネクションをすぐに切りたい場合
    sock.puts ""

    while line=sock.gets
        line = line.chomp   # 改行コードを削除
        if line == ""
            break
        end
    end

    while line=sock.gets
        line = line.chomp   # 改行コードを削除
        puts line
    end
end
