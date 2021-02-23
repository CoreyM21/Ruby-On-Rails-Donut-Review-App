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
        @donut= Donut.new(donut_params)
        if @donut.save
            redirect_to donut_path(@donut)
        else 
            render :new     
        end
      end

      def edit
      end

      def update
        if @donut.update(donut_params)
            redirect_to donut_path(@donut)
        else
            render :edit
        end
      end

      def destroy
        set_donut.destroy
        redirect_to donuts_path
      end

      private

      def donut_params
        params.require(:donut).permit(:name, :color, :location)
      end

      def set_donut 
        @donut = Donut.find(params[:id])
      end

end