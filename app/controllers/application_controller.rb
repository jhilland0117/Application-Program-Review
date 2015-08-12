class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout 'user'
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

	  protected

	  def configure_permitted_parameters
	      devise_parameter_sanitizer.for(:sign_up) do |u|
	        u.permit :username, :email, :password, :password_confirmation, :first_name, :last_name, :user_role_id
	      end
	      devise_parameter_sanitizer.for(:sign_in) do |u|
	      	u.permit(:username, :email, :password, :remember_me) 
	      end
		    devise_parameter_sanitizer.for(:account_update) do |u| 
		      u.permit(:password, :password_confirmation, :current_password) 
		  end
	    end

	  #  def stored_location_for(resource)
		#  nil
		#end

		#def after_sign_in_path_for(resource)
			# <%= link_to "user_role", user_role_path(@user_role) %>
		#end

		def after_sign_in_path_for(resource)
<<<<<<< HEAD
			#	user_dash_index_path
			     if current_user.user_role_id == 1
                		admin_dash_index_path
		            else
                		user_dash_index_path
		            end

		end

=======
			if current_user.user_role_id == 1
				admin_dash_index_path
			else
				user_dash_index_path
			end
		end

>>>>>>> 39e8cbc0d440e26a2949665f999504e3cca655b3
		
end

