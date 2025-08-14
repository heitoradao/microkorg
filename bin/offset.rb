#! ruby

offset = ARGV.shift

8.times do |n|
  puts "  int16 :offset_#{offset}_#{n+1}"
end
