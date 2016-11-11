class SiteController < ApplicationController

	def home
		today = Date.today
		@today = []
		@this_month = []
		@all_concerts = Concert.all
		@all_concerts.each do |one_concert|
			if one_concert.date == Date.today
				@today.push(one_concert)
			end
			end
		@all_concerts.each do |one_concert|
			if one_concert.date > today.beginning_of_month && one_concert.date < today.end_of_month 
			@this_month.push(one_concert)
			end
			end 
		render 'home'
	end
end
