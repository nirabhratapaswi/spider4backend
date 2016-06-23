class SigninuserController < ApplicationController
    def index
    end
    def show
    end
    def create
        @check = Check.new(params.require(:check).permit(:username, :password))
        @user_check = Login.all
        @user_check.each do |userCheck|
            if @check.password == userCheck.password && @check.username == userCheck.username && userCheck.authority == 'admin'
                cookies[:user_name] = userCheck.username
                redirect_to url_for(:controller => :adminloggedin, :action => :index)
                return
            end
            if @check.password == userCheck.password && @check.username == userCheck.username && userCheck.authority == 'editor'
                cookies[:user_name] = userCheck.username
                redirect_to url_for(:controller => :editor, :action => :index)
                return
            end
            if @check.password == userCheck.password && @check.username == userCheck.username && userCheck.authority == 'viewer'
                cookies[:user_name] = userCheck.username
                redirect_to url_for(:controller => :viewer, :action => :index)
                return
            end
        end
        redirect_to new_signinuser_path
   end
end
