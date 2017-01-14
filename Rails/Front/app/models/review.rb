class Review
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  field :rating, type: Integer
  field :user_id, type: Integer
  field :movie_id, type: String

  # belongs_to :user
  belongs_to :movie
end
