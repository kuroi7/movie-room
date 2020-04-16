class AddClumnsToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies ,:title ,:string
    add_column :movies ,:release_date ,:datetime
    add_column :movies ,:overview ,:string
    add_column :movies ,:poster_path ,:string
  end
end
