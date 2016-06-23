class ViewerController < ApplicationController
  def index
      @posts = Editorpost.all
  end
end
