require 'socket'

def server sock
    body = ""
    while line=sock.gets
        line.chomp!
        break if line == ""
        p line
        body += "receive: #{line}<br>"
    end
    sock.puts "HTTP/1.0 200 OK"
    sock.puts ""
    sock.puts "<!DOCTYPE html>"
    sock.puts "<html><body>"
    sock.puts "<h1>my server</h1>"
    sock.puts body
    sock.puts "</body></html>"
    sock.close
end

TCPServer.open 80 do |s|
    while true
        Thread.new s.accept do |sock|
            server sock
        end
    end
end
