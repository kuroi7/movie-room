class AddColumnPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :movie_id, :string
  end
end
