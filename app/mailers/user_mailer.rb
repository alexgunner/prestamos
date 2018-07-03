class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    def welcome_email
        @user = params[:user]
        @url  = 'http://example.com/activate/' + @user.user_activation_token
        mail(to: @user.email, subject: 'Bienvenido a nuestr app')
    end
    
    def password_recovery_email
        @user = params[:user]
        @url = 'http://example.com/recover_password/' + @user.user_activation_token
    end
end
