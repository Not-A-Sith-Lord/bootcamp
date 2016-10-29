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
  movies = the_search.movies
  first_twentyfive = movies[0..25]
  list.poster?(first_twentyfive)
  @movies_with_poster = list.all_movies[0..8]
  @random_movie = @movies_with_poster.sample
	erb :results
end

get "/results" do
  erb :results
end