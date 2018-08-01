class ReviewsController < ApplicationController
    # skip_before_action :authorized, only: [:new, :create]

    before_action :set_review, only: [:edit, :show, :update, :destroy]

    def new
      @review = Review.new
    end

    def create
      @review = Review.new(review_params)
      if @review.save
        redirect_to review_path(@review)
      else
        render[:new]
      end
    end

    def show
    end

    def edit
    end

    def update
      if @review.update(review_params)
        redirect_to review_path(@review)
      else
        render[:edit]
      end
    end

    def destroy
      @review.destroy
      flash[:notice] = 'Review succesfully deleted!'
      redirect_to teachers_path
    end

    private

    def review_params
      params.require(:review).permit(:rating, :review, :booking_id)
    end
    #
    def set_review
      @review = Review.find_by(id: params[:id])
    end
  end
end
