class ReviewsController < ApplicationController 

    before_action :set_review, :find_review, only: [:show, :update, :edit, :destroy]

    def show
    end

    def new 
        if params[:donut_id] && @donut = Donut.find_by_id(params[:review_id])
            @review = @donut.reviews.build
        else
            @review = Review.new
            @review.build_donut
        end
    end

    def index
        @reviews = Review.all 
    end

    def create 
            @review = current_user.reviews.build(review_params)
            byebug
        if @review.save 
            redirect_to review_path(@review)
        else 
            @donut = Donut.find_by_id(params[:donut_id]) if params[:donut_id] != ""
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
        params.require(:review).permit(:donut_id, :description, donuts_attributes: [:name, :color, :location])
    end

    def set_review
        @review = Review.find_by(id: params[:id])
    end

    def find_donut 
        @review = Review.find(params[:id])
    end

    
end
