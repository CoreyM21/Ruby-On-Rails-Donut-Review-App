class ReviewsController < ApplicationController 

    before_action :set_review, only: [:index, :show, :update, :edit, :destroy]

    def show
        
    end

    def new
        if correct_donut
          @review = @donut.reviews.build
        else
          redirect_to root_path
        end
      end   

    def index 
          if correct_donut
            @reviews = @donut.reviews 
          else
            @reviews = current_user.reviews 
          end        
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
        if @review.update(review_params)
          redirect_to review_path(@review)
        else 
          render :edit 
        end
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

    def correct_donut
      params[:donut_id] && @donut = Donut.find_by_id(params[:donut_id])
    end


    
end
