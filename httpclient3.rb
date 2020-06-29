require "socket"

host=ARGV[0]
port=80
path=ARGV[1]

TCPSocket.open host, port do |sock|
    sock.puts "GET #{path}"

    while line=sock.gets
        puts line
    end
end
