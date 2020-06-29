require "socket"

host="www.is.kyusan-u.ac.jp"
port=80
path="/~toshi/index.html"

TCPSocket.open host, port do |sock|
    sock.puts "GET #{path}"

    while line=sock.gets
        puts line
    end
end
