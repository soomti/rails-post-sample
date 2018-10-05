class PostsController < ApplicationController
    # view o
    def index
        # 모든 값을 가져온다.
        @posts = Post.all
    end

    def show
        post_id = params[:id]
        @post = Post.find(post_id)
    end

    def new
    end

    def edit
        post_id = params[:id]
        @post = Post.find(post_id)
    end

    # view x
    def create
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save 
        redirect_to "/posts"
    end

    def update 
        post_id = params[:id]
        @post = Post.find(post_id)
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save
        redirect_to "/posts/#{post_id}"
    end

    def destroy 
        post_id = params[:id]
        @post = Post.find(post_id)
        @post.destroy
        redirect_to "/posts"
    end  
end
