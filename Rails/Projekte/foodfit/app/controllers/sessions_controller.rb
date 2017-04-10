class SessionsController < ApplicationController

def new
			end

			def create
				user = User.find_by(email: params[:email])
				if user && user.authenticate(params[:password])
					session[:user_id] = user.id
					flash[:notice] = "Willkommen zurück #{user.name.capitalize}!"
					redirect_to root_path
				else
					flash.now[:alert] = "Ungültige Anmeldedaten!"
					render :new
				end
			end

			def destroy
		  		session[:user_id] = nil
		  		redirect_to root_path, notice: "Sie haben sich erfolgreich Ausgeloggt."
		  	end

end
