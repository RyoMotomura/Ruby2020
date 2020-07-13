require 'socket'

def server sock
    while line=sock.gets
        sleep 2
        line.chomp!
        break if line == ""
        p line
        sock.puts "receive: #{line}"
    end
    sock.close
end

s = TCPServer.open 80

while true
    sock = s.accept
    server sock
end

s.close
