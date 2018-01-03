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
        @service = Service.find(params[:id])
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
        respond_to do |format|
        if @services.update(service_params)
          format.html { redirect_to services_path, notice: 'Service was successfully updated'}
        else
          format.html { render:edit }
        end
      end
    end

    def destroy
      @service.destroy
      respond_to do |format|
        format.html { redirect_to services_url, notice: 'Service was successfully deleted'}
      end
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
