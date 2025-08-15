#! /usr/bin/env ruby

files = Dir["*.mk2prog"]
files.each do |prog|
  puts prog
  system "xxd -g 1 '#{prog}' > #{prog}.txt"
end
