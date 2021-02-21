class DonutsController < ApplicationController

    def index
        @donuts = Donut.all 
    end

    def show
        @donut = Donut.find(params[:id])
    end

    def new
    end

    def create
        @donut= Donut.new(donut_params(:name, :color, :loction))
        @donut.save
        redirect_to donut_path(@donut)
      end

      def edit
        @donut = Donut.find(params[:id])
      end

      def update
        @donut = Donut.find(params[:id])
        @donut.update(donut_params(:name, :color, :location))
        redirect_to donut_path(@donut)
      end

      private

      def donut_params(*args)
        params.require(:donut).permit(*args)
      end

end