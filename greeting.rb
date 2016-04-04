hello = ARGV.shift

ARGV.each do |name|
  puts "#{hello} #{name}"
end
