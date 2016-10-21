require_relative('lib/authenticator.rb')
require_relative('lib/word_counter.rb')


CheckPassword = Authenticator.new('myusername','mypassword')
CheckPassword.verify

New_word_counter = Word_counter.new
New_word_counter.count_words

