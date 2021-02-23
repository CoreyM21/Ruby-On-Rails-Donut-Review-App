class UsersController < ApplicationController

    def show
    end

    def new
        @user = User.new 
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            # flash[:message] = "Account Created Successfully"
            redirect_to user_path(@user)
        else
            @errors = @user.errors
            render :new
        end
    end
end
