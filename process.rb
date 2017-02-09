#!/usr/bin/env ruby

require 'csv'

puts ARGV.inspect

ARGV[0] ||= 'source.csv'
ARGV[1] ||= 'attendees.yml'

file = File.open(ARGV[1], 'w')

file.puts('users:')
file.puts('  regular:')
CSV.foreach(ARGV[0]) do |attendee|
  next if attendee[15] == 'Email Address'
  file.puts("    - username: #{attendee[15]}")
  file.puts("      password: #{attendee[15]}")
  file.puts("      sudoer: false")
end