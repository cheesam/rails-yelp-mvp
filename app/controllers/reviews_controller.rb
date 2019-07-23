class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @review = Review.all
  end

  def create
    @review = Review.create(review_params)
    # redirect_to restuarants_path
  end

  def new
    @review = Review.new
  end

  def edit() end

  def show() end

  def update
    @review.update(review_params)
    # redirect_to restuarants_path(@review)
  end

  def destroy
    @review.destroy
    # redirect_to restuarants_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
