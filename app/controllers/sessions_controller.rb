class SessionsController < ApplicationController
    layout false
    def registration
        
    end
    
    def create_user
        @user = User.create(name: params[:name], lastname: params[:lastname], email: params[:email], phone: params[:phone], address: params[:address], country: "Bolivia", city: params[:city], password: params[:password], ci: params[:ci], user_status: false, user_activation_token: SecureRandom.urlsafe_base64(20) )
        UserMailer.with(user: @user).welcome_email.deliver_now
    end
    
    def update_user
        @user = User.find(params[:id])
        @user.name = params[:name]
        @user.lastname = params[:lastname]
        @user.email = params[:email]
        @user.phone = params[:phone]
        @user.address = params[:address]
        @user.city = params[:city]
        @user.password = params[:password]
        @user.ci = params[:ci]
        @user.save
        redirect_to '/profile/' + @user.id.to_s
    end
    
    def activate
        token = params[:token]
        user = User.find_by(user_activation_token: token)
        user.user_status = true
        user.save
        redirect_to '/login'
    end
    
    def recover_password
        token = params[:token]
        user = User.find_by(user_activation_token: token)
        #add logic for email
        redirect_to '/change_password/' + user.id.to_S
    end
    
    def change_password
        @user = User.find(params[:id])
    end
    
    def update_password
        @user = User.find(params[:id])
        @user.password = params[:password]
        redirect_to '/login'
    end
    
    def login
         
    end
    
    def start_session
        user = User.find_by(email: params[:email])
        if !user.nil?
            if user.password == params[:password] and user.user_status != false
                redirect_to '/dashboard/' + user.id.to_s
            else
                redirect_to '/error'
            end
        else
            redirect_to '/error'
        end
    end
end
