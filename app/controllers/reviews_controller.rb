class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    review = Review.new(params_review)
    restaurant = Restaurant.find(params['restaurant_id'])
    review.restaurant = @restaurant
    review.save
    redirect_to restaurants_path
  end

  private

  def params_review
    params['review'].permit(:content, :rating)
  end
end
