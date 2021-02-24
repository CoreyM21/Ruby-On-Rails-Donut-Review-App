class SessionsController < ApplicationController

    def welcome
    end
  
    def new
        @user = User.new
    end
  
    def create
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)   
      else
        # flash[:message] = "Incorrect credentials, please try again"
        redirect_to '/login' 
      end
    end

  
     def destroy
          session.delete(:user_id)
          redirect_to '/welcome'
     end


end