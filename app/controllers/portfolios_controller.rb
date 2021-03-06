class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]

    def index
        @portfolio_items = Portfolio.all
    end

    def show
    end

    def new
        @portfolio_items = Portfolio.new
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)

        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: 'Your post is now live.' }
          else
            format.html { render :new }
          end
        end
    end

    def update
        respond_to do |format|
        if @portfolio_item.update(portfolio_params)
          format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated'}
        else
          format.html { render:edit }
        end
      end
    end

    def destroy
      @portfolio_item.destroy
      respond_to do |format|
        format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully deleted'}
      end
    end

private

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
    
    def portfolio_params
        params.require(:portfolio).permit(:title,
                                          :subtitle,
                                          :body,
                                          :main_image,
                                          :thumb_image,
                                          )
    end
end