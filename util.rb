class String
  def tokenize
    self.gsub(/[\.|\-]/,'').split(/\s+/)
  end
end

def compute(queries)
  qlen = queries.length
  queries.each_with_index do |q1, idx1|
    t1 = q1.tokenize
    queries[idx1+1..qlen].each do |q2|
      #calculate jaccard edit distance
      t2 = q2.tokenize
      sim = (t1 & t2).length.to_f/(t1 | t2).length.to_f
      puts "#{sim}\t#{q1}\t#{q2}" 
    end
  end
end

