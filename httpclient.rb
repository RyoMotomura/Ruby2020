require "socket"

host="www.is.kyusan-u.ac.jp"
port=80
path="/~toshi/index.html"

sock=TCPSocket.open host, port
sock.puts "GET #{path}"

while line=sock.gets
    puts line
end

sock.close
