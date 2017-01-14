class AddAvgRatingToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :avg_rating, :decimal, default: 0
  end
end
