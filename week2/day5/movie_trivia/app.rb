require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative("lib/List.rb")

#---------------------------------------------
list = List.new()

get "/" do
  erb :home
end


get "/search_results" do
  the_search = Imdb::Search.new(params[:movie])
  @movies = the_search.movies
  @first_twentyfive = @movies[0..25]
  list.poster?(@first_twentyfive)
  @movie_with_posters = list.all_movies
	erb :results
end

get "/results" do
  erb :results
end