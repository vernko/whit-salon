class BlogsController < ApplicationController
    before_action :set_blog, only: [:show, :edit, :update, :destroy]

    def index
      @blogs = Blog.all
    end

    def show
      @blog = Blog.find(params[:id])
    end

    def new
      @blog = Blog.new
    end

    def edit
    end

    def create
      @blog = Blog.new(blog_params)

      respond_to do |format|
        if @blog.save
          format.html { redirect_to @blog, notice: 'Blog was created succesfully.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @blog.update(blog_params)
          format.html { redirect_to @blog, notice: 'Blog was successfully updated'}
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @blog.destroy

      respond_to do |format|
        format.html { redrect to blogs_url, notice: 'Blog was successfully deleted'}
      end
    end

private

    def set_blog
        @blog = Blog.friendly.find(params[:id])
    end
    
    def blog_params
        params.require(:blog).permit(:title,
                                     :body
                                    )
    end
end
