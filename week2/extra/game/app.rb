# require "sinatra"
# require "sinatra/reloader"

require_relative "lib/cell.rb"

#-----------------------------------------
cell1 = Cell.new(1,[0,0,0,0,0,0,1,1])
p cell1.regenerate

cell1 = Cell.new(1,[0,0,0,0,1,1,1,1])
p cell1.regenerate