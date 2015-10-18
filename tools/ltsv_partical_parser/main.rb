require 'ltsv'
require 'pp'

keys = ARGV[0].split(',')

while line = STDIN.gets do
  values = LTSV.parse(line.chomp)
  output = [ ] 
  keys.each do |key|
    output << values.first[key.to_sym]  
  end
  puts output.join(' ')
end
