require 'ltsv'
require 'pp'

while line = STDIN.gets
  parsed = LTSV.parse(line).last
  log = parsed[:remote_addr] + " -" + " " + "-" + " " + 
    "[" + parsed[:time] + "]" + ' ' +
    '"' + parsed[:request_method] + ' ' +  parsed[:uri] + '"' + ' ' +
    parsed[:status] + ' ' +
    parsed[:body_bytes_sent] + ' ' +
    parsed[:client_referer] + ' ' + 
    parsed[:client_useragent] + ' ' + 
    parsed[:client_forwardedfor] + ' ' + 
    parsed[:request_time]
  puts log
end
