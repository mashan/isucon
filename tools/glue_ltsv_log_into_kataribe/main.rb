require 'ltsv'
require 'pp'

while line = STDIN.gets
  begin 
    parsed = LTSV.parse(line.chomp).last
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
  rescue
    warn "parse error. #{line}"
  end
end
