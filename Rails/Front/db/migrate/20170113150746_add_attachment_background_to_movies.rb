class AddAttachmentBackgroundToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :background
    end
  end

  def self.down
    remove_attachment :movies, :background
  end
end
