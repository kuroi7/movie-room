class AddPosterpathToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :poster_path, :text
  end
end
