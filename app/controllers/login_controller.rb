class LoginController < ApplicationController
  def index
        @login = Login.all
    end
    
    def show
        @login = Login.find(params[:id])
    end
    
    def new
    end
    
    def edit
    end
    
    def create
        @login = Login.new(login_params)
        
        if @login.save
            redirect_to @login
        else
            render 'new'
        end
    end
    
    def update
    end
    
    def destroy
        @login = Login.find(params[:id])
        
        if @login.user_authority == 'admin'
            @login.destroy
        end
        redirect_to login_index_path
    end
    
    private
    def login_params
        params.require(:login).permit(:username, :password, :authority)
    end
end
