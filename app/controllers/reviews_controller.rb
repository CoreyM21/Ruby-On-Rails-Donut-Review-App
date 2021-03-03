class ReviewsController < ApplicationController 

    before_action :set_review, :find_review, only: [:show, :update, :edit, :destroy]

    def show
        
    end

    def new
        if params[:donut_id] && @donut = Donut.find_by_id(params[:donut_id])
          @review = @donut.reviews.build
        else
          redirect_to root_path
        end
      end   

    def index
        @reviews = Review.all 
    end

    def create
        @donut = Donut.find_by_id(params[:donut_id])
        @review = @donut.reviews.build(review_params)
        @review.user = current_user
        if @review.save
          redirect_to review_path(@review)
        else
          render :new
        end
      end

    def edit 
    end

    def update
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def destroy 
        @review.destroy 
        redirect_to donuts_path
    end

    private

    def review_params
        params.require(:review).permit(:donut_id, :description, donuts_attributes: [:name, :color, :location])
    end

    def set_review
        @review = Review.find_by_id(params[:id])
    end

    def find_review 
        @review = Review.find(params[:id])
    end

    
end
