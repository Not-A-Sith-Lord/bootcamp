class ContactsController < ApplicationController

	def index
		@contacts = Contact.all
		@sorted = @contacts.sort do |a,b| a[:name] <=> b[:name] end		
		
		render 'index'
	end

	def new
	end

	 def create

    	contact = Contact.new(
      	:name => params[:contact][:name],
      	:address => params[:contact][:address],
      	:phone => params[:contact][:phone],
      	:email => params[:contact][:email])

      	contact.save

		redirect_to("/")  
	end

	def show
		@contact = Contact.find(params[:id])
		render 'show'
	end

end
