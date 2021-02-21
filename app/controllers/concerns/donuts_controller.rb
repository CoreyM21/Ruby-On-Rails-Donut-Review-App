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
        @donut= Donut.new
        @donut.name = params[:name]
        @donut.color = params[:color]
        @donut.location = params[:location]
        @donut.save
        redirect_to donut_path(@donut)
      end

      def edit
      end

      def update
      end

end