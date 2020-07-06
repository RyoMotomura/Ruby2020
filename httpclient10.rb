require "socket"

host=ARGV[0]
port=80
path=ARGV[1]

TCPSocket.open host, port do |sock|
    sock.puts "GET #{path} HTTP/1.0"
    sock.puts ""

    while line=sock.gets
        puts line
    end
end
