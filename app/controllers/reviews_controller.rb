# frozen_string_literal: true

# Description/Explanation of ReviewController class
class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to @product
  end

  private

  def review_params
    params.require(:review).permit(:body, :user_id)
  end
end
