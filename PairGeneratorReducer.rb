require_relative "util.rb"
@key = 0
@queries = []

STDIN.each_line do |line|
  line = line.chomp.strip
  token, query = line.split("\t")
  token = token.strip
  if token != @key
    compute(@queries)
    @queries.clear
    @key = token
  end
  @queries << query
end
compute(@queries)
