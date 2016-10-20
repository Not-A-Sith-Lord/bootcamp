require 'ruby-dictionary'
require_relative("lib/WordChain.rb")

dictionary = Dictionary.from_file("/usr/share/dict/words")

chain = WordChain.new(dictionary)
chain.find_chain("cat","dog")