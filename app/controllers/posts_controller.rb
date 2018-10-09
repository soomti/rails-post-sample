class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    # view o
    def index
        @posts = Post.all
    end
    
    def show
    end
    
    def edit
    end   
    
    def new
        @post = Post.new
    end
    # view x
    def create
        @post = Post.new(post_params)
        respond_to do |format|
          if @post.save
            format.html { redirect_to @post }
            format.json { render :show, status: :created, location: @post }
          else
            format.html { render :new }
            format.json { render json: @post.errors, status: :unprocessable_entity }
          end
        end
    end

    def update         
        @post.update(post_params)
        redirect_to @post
    end

    def destroy        
        @post.destroy
        redirect_to posts_path
    end 
    
    private
    def set_post
      @post = Post.find(params[:id])
    end  

    def post_params
        params.require(:post).permit(:title, :content)
    end
end