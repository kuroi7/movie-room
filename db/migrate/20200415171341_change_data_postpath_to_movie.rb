class ChangeDataPostpathToMovie < ActiveRecord::Migration[5.0]
  def change
    change_column :movies, :poster_path, :integer
  end
end
