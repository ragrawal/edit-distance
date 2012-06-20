echo "Naive"
time cat queries.txt | ruby NaiveApproach.rb > naive_output.txt
time cat queries.txt | ruby NaiveApproach.rb > naive_output.txt
time cat queries.txt | ruby NaiveApproach.rb > naive_output.txt
echo "Stage 1: dictionary building"
time cat queries.txt | ruby FrequencyCountMapper.rb | sort -t$'\t' -k1,1 | ruby FrequencyCountReducer.rb > dictionary 
time cat queries.txt | ruby FrequencyCountMapper.rb | sort -t$'\t' -k1,1 | ruby FrequencyCountReducer.rb > dictionary
time cat queries.txt | ruby FrequencyCountMapper.rb | sort -t$'\t' -k1,1 | ruby FrequencyCountReducer.rb > dictionary
echo "Stage 2: Partitioning and distance calculation"
time cat queries.txt | ruby DictionaryPairGeneratorMapper.rb | sort -t$'\t' -k1,1 | ruby PairGeneratorReducer.rb > prefix_output.txt
time cat queries.txt | ruby DictionaryPairGeneratorMapper.rb | sort -t$'\t' -k1,1 | ruby PairGeneratorReducer.rb > prefix_output.txt
time cat queries.txt | ruby DictionaryPairGeneratorMapper.rb | sort -t$'\t' -k1,1 | ruby PairGeneratorReducer.rb > prefix_output.txt
echo "Algorithm 3: Partitioning and distance calculation"
time cat queries.txt | ruby SimplePairGeneratorMapper.rb | sort -t$'\t' -k1,1 | ruby PairGeneratorReducer.rb > prefix_output.txt
time cat queries.txt | ruby SimplePairGeneratorMapper.rb | sort -t$'\t' -k1,1 | ruby PairGeneratorReducer.rb > prefix_output.txt
time cat queries.txt | ruby SimplePairGeneratorMapper.rb | sort -t$'\t' -k1,1 | ruby PairGeneratorReducer.rb > prefix_output.txt
