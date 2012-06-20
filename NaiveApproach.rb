require_relative "util.rb"

@queries = []
STDIN.each do |line|
  line = line.chomp.strip
  @queries << line.chomp.strip unless line.length == 0
end
compute(@queries)
