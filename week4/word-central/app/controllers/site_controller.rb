class SiteController < ApplicationController
	def home
		render 'home'
	end

	def text_inspections
		render 'text_inspection'
	end
end
