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
    end

    def destroy
    end

private
    
    def set_transformation
        @transformations = Transformation.find(params[:id])
    end

    def transformation_params
        params.require(:transformation).permit(:title,
                                          :body,
                                          :main_image,
                                          :thumb_image,
                                          )
    end
end
