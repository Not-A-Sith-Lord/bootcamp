class WordChain
    
    def initialize(dictionary)
         @dictionary = dictionary
    end

    def find_chain(word1, word2)
    	word1 = word1.chars.to_a
    	word2 = word2.chars.to_a
    	puts word1.join

    	while word1 != word2

    		for i in 0..word1.length-1

    			if word1[i] != word2[i]
    				new_word = word1.clone
    				new_word[i] = word2[i]

    				if @dictionary.exists?(new_word.join)
    					word1 = new_word
    					puts word1.join
    				end
    			end
    		end
    	end
	end
end