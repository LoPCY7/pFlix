class ReviewsController < ApplicationController
  before_action :find_review, only: [:edit, :update, :destroy]
  before_action :find_movie
  before_action :authenticate_user!

  # def index
  #   @reviews = Review.all.order("created_at DESC")
  # end

  def new
  	@review = Review.new
  end

  def create
  	@review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.movie_id = @movie.id

  	if @review.save
  		redirect_to @movie
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def find_movie
    @movie = Movie.find(params[:movie_id])
  end

  def review_params
  	params.require(:review).permit(:title,:body,:rating)
  end
end
