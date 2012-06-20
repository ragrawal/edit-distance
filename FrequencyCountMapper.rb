require_relative "util.rb"
STDIN.each_line do |line|
  line = line.chomp.strip
  next if line.length == 0
  line.tokenize.uniq.each do |t|
    puts "#{t}\t1"
  end 
end