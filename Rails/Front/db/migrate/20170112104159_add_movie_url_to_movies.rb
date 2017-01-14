class AddMovieUrlToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :movie_url, :string
  end
end
