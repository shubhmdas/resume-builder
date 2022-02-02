class UsersController < ApplicationController
    include SessionsHelper

    def new
    end

    def create
        @user = User.new(user_params)
        @user.profile = Profile.new

        if @user.save
            log_in(@user)
            redirect_to(edit_path)
            flash[:success] = "Registered successfully!"

        else
            flash.now[:danger] = 'An error occured'
            render('new')
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :confirm_password)
    end

end
