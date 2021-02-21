class DonutsController < ApplicationController

    before_action :set_donut, only: [:show, :update, :edit]

    def index
        @donuts = Donut.all 
    end

    def show
    end

    def new
        @donut = Donut.new 
    end

    def create
        @donut= Donut.new(donut_params(:name, :color, :loction))
            if @donut.save
            redirect_to donut_path(@donut)
        else 
            render :new     
        end
      end

      def edit
      end

      def update
        if @donut.update(donut_params(:name, :color, :location))
            redirect_to donut_path(@donut)
        else
            render :edit
        end
      end

      private

      def donut_params(*args)
        params.require(:donut).permit(*args)
      end

      def set_donut 
        @donut = Donut.find(params[:id])
      end

end