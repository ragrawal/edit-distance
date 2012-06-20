require_relative "util.rb"

tokenfile = "/Users/ragrawal/Desktop/desk/edit_distance/dictionary"
@dictionary = {}

File.open(tokenfile).each_line do |line|
  next if line.strip.length == 0
  @dictionary[line.strip] = true
end

STDIN.each_line do |line|
  line = line.chomp.strip
  next if line.length == 0
  line.tokenize.uniq.each do |t|
    t = t.strip
    puts "#{t}\t#{line}" if @dictionary.has_key?(t)
  end
end