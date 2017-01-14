class RenameMovieUrlToUrl < ActiveRecord::Migration[5.0]
  def change
    rename_column :movies, :movie_url, :url
  end
end
