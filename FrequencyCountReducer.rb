@key = nil
@frequency = 0

STDIN.each_line do |line|
  k, v = line.split("\t")
  if k != @key
    puts "#{@key}" if !@key.nil? and @frequency > 1
    @key = k
    @frequency = 0
  end
  @frequency = @frequency + v.to_i
end
puts "#{@key}" if !@key.nil? and @frequency > 1