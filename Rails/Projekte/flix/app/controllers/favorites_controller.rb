class FavoritesController < ApplicationController

	def create
		@movie = Movie.find(params[:movie_id])
			unless Favorite.where(user_id: current_user.id, movie_id: @movie.id).any?
				@movie.favorites.create(user_id: current_user.id)
				redirect_to @movie, notice: "Movie wurde geliked!"
			else
				redirect_to @movie, alert: "Mehrmals liken ist nicht möglich!"
				end
	end

	def destroy
		@favorite = Favorite.find(params[:id])
		@favorite.delete
					
		redirect_to movie_path(params[:movie_id]), alert: "Like wurde entfernt!"
				
	end

	def show
	end

end
