class AdminloggedinController < ApplicationController
  def index
      @login = Login.all
  end

  def show
      
  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
      @login = Login.find(params[:id])
      @login.destroy
        
      redirect_to url_for(:controller => :adminloggedin, :action => :index)
      return
  end
end
