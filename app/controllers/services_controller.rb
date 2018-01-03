class ServicesController < ApplicationController
    before_action :set_service, only: [:show, :edit, :update, :destroy]

    def index
        @services = Service.all
    end

    def show
    end

    def new
        @services = Service.new
    end

    def edit
    end

    def create
        @services = Service.new(service_params)

        respond_to do |format|
          if @services.save
            format.html { redirect_to services_path, notice: 'Your service is now live.' }
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

    def set_service
        @service = Service.find(params[:id])
    end

    def service_params
        params.require(:service).permit(:title,
                                          :body,
                                          :main_image,
                                          :thumb_image
                                          )
    end
end
