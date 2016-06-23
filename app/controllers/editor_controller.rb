class EditorController < ApplicationController
    def index
        @posts = Editorpost.all
    end
    def show
    end
    def edit
    end
    def new
    end
    def create
        @posts = Editorpost.new(params.require(:editorpost).permit(:message))
        @posts.by = cookies[:user_name]
        if @posts.save
            redirect_to editor_index_path
        end
    end
    def update
    end
    def destroy
      @post = Editorpost.find(params[:id])
      if @post.by == cookies[:user_name]   
         @post.destroy
          
          redirect_to editor_index_path#url_for(:controller => :editorpost, :action => :index)
         return
      end
    end
end
