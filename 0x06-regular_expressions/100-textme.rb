#!/usr/bin/env ruby
# regural expression
puts ARGV[0].scan(/^(.*?),(.+?),(.+?)$/).join
