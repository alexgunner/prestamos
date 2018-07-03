class MainController < ApplicationController
    layout false
    def index
        
    end
    
    def dashboard
        @user = User.find(params[:id])
    end
    
    def error
        
    end
    
    def profile
        @user = User.find(params[:id])
    end
end
