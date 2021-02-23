class ReviewsController < ApplicationController
    
    # validates :description, presence: true 

    before_action :set_review, only: [:show, :update, :edit, :destroy]

    def show
    end

    def new 
        @review = Review.new 
    end

    def index
        @reviews = Review.all 
    end

    def create 
        @review = Review.new(review_params)
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
        redirect_to review_path(review)
    end

    def destroy 
        @review.destroy 
        redirect_to reviews_path
    end

    private

    def review_params
        params.require(:review).permit(:description, donuts_attributes: [:name, :color, :location])
    end

    def set_review
        @review = Review.find_by(id: params[:id])
    end



    
end
