class SandwichesController < ApplicationController
	  protect_from_forgery with: :null_session

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find(params[:id])
		ingredients = Ingredient.where(:sandwich_id => sandwich.id)
		render json: sandwich.to_json( include: :ingredients)
	end

	def update
		sandwich = Sandwich.find(params[:id])
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find(params[:id])
		sandwich.destroy
		render json: sandwich
	end

	def add_ingredient
		blah = Ingredient.find(params[:ingredient_id])
		bacon = Sandwich.find(params[:id])

		bacon.total_calories += blah.calories

		bacon.save

		bacon.ingredients.push(blah)
		render json: bacon.to_json( include: :ingredients)
	end

# =================

	private

	def sandwich_params
		params.require(:sandwich)
		.permit(:name,:bread_type)
	end
end
