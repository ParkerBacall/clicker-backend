class ClicksController < ApplicationController
    def index
        @clicks = Click.all
        render json: @clicks
    end

    def show    
        @click = Click.find(params[:id])
        render json: @click
    end

    def update
        @click = Click.find(params[:id])
        @click.update(click_params)
        render json: @click
    end

   def click_params
        params.require(:click).permit(:number)
   end
end
