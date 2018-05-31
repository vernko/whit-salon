class TransformationsController < ApplicationController
    before_action :set_transformation, only: [:show, :edit, :update, :destroy]
    def index
        @transformations =  Transformation.all
    end

    def show
    end

    def new
        @transformations =  Transformation.new
    end

    def edit
        @transformations = Transformation.find(params[:id])
    end

    def create
        @transformations =  Transformation.new(transformation_params)

        respond_to do |format|
          if @transformations.save
            format.html { redirect_to transformations_path, notice: 'Your before and after is now live.' }
          else
            format.html { render :new }
          end
        end
    end

    def update
        respond_to do |format|
        if @transformations.update(transformation_params)
          format.html { redirect_to transformations_path, notice: 'Blog was successfully updated'}
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @transformations.destroy
      respond_to do |format|
        format.html { redirect_to transformations_url, notice: 'Blog was successfully deleted'}
      end
    end

private
    
    def set_transformation
        @transformations = Transformation.find(params[:id])
    end

    def transformation_params
        params.require(:transformation).permit(:title,
                                          :body,
                                          :before_image,
                                          :after_image,
                                          )
    end
end
