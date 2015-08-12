class OmniauthCallbacksController < Devise::OmniauthCallbacksController   
def google_oauth2
     
    @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)
	# added for the calender 
	   @auth = request.env["omniauth.auth"]
	   @token = @auth["credentials"]["token"]
           client = Google::APIClient.new
           client.authorization.access_token = @token
           service = client.discovered_api('calendar', 'v3')
           @result = client.execute(
            :api_method => service.calendar_list.list,
            :parameters => {},
            :headers => {'Content-Type' => 'application/json'})
	
	#end additional code
    if @user.persisted?

       flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
     #  sign_in_and_redirect @user, :event => :authentication
  	sign_in @user, :event => :authentication
	#redirect_to @user, notice: 'User was successfully updated.'	
	#redirect_to :controller => 'admin_controller', :action => 'show' , :id => @user
	#redirect_to :controller => 'thing', :action => 'edit', :id => 3
        #redirect_to new_user_session_path

     # Calender Events
#			@event = Event.new(params[:event])
#		    respond_to do |format|
#		      if @event.save
#			email = @event.attendees.split(",")
#			new_array = []  
#			email.each do |mail|
#			   new_array << { "email" => mail } 
#			end  
#		       user = current_user
#			event = {
#				'summary' => @event.summary,
#				'location' => @event.location,
#				'start' => {
#				'dateTime' => @event.start_date_time.to_datetime.rfc3339},  
#			       'end' => {         
#			  'dateTime' => @event.end_date_time.to_datetime.rfc3339},                
#			 'attendees' => new_array           
#				 }
#  
		#Use the token from the data to request a list of calendars         token = user["token"]
#		      client = Google::APIClient.new         
#		      client.authorization.access_token = @token
#			service = client.discovered_api('calendar', 'v3')
#			@result = client.execute(:api_method => service.events.insert, :parameters => {'calendarId' => 'primary'},                         :body => JSON.dump(event),   :headers => {'Content-Type' => 'application/json'})
#			format.html { redirect_to @event, notice: 'Event was successfully created.' }  
#		  format.json 
#		   {
#			render json: @event, status: :created, location: @event 
#		   } 
#		      else
#		format.html { render action: "new" }
#		format.json { render json: @event.errors, status: :unprocessable_entity }   
#		    end  
#		   end  

   else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
end



end


 #What data comes back from OmniAuth?     
   
