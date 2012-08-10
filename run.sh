echo "Naive"
time cat queries.txt | ruby NaiveApproach.rb > naive_output.txt
echo "Single MapReduce Job"
time cat queries.txt | ruby SimplePairGeneratorMapper.rb | sort -t$'\t' -k1,1 | ruby PairGeneratorReducer.rb > prefix_output.txt
echo "Two MapReduce: Stage 1"
time cat queries.txt | ruby FrequencyCountMapper.rb | sort -t$'\t' -k1,1 | ruby FrequencyCountReducer.rb > dictionary 
echo "Two MapReduce: Stage 2"
time cat queries.txt | ruby DictionaryPairGeneratorMapper.rb | sort -t$'\t' -k1,1 | ruby PairGeneratorReducer.rb > prefix_output.txt
