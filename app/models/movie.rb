class Movie
	include Mongoid::Document
	include Mongoid::Paperclip

	field :title, type: String
	field :description, type: String
	field :length, type: String
	field :director, type: String
	field :rating, type: String
	field :genre, type: String
	field :releaseDate, type: Date
	field :url, type: String
	field :avg_rating, type: BigDecimal, default: 0

	has_many :reviews

	has_mongoid_attached_file :image, styles: { medium: "400x600#" }
	has_mongoid_attached_file :background, styles: { bg: "1920x900#" }
  validates_attachment_content_type :image, :background, content_type: /\Aimage\/.*\z/
end
