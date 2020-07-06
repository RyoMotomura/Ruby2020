require "socket"

prot,dummy,host,*arg=ARGV[0].split "/"
path=arg.join "/"
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
