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
    Thread.new s.accept do |sock|
        server sock
    end
end

s.close
