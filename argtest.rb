puts ARGV[0]

words=ARGV[0].split '/'
p words
host=words[2]
path="/#{words[3]}/#{words[4]}"
p host
p path

prot,dummy,host,*path=ARGV[0].split "/"
p prot
p host
p dummy
p path

a,b,*c=[0,1,2,3,4]
p a
p b
p c

ss="a,b,c,d,e".split ","
p ss
s=ss.join ":"
p s