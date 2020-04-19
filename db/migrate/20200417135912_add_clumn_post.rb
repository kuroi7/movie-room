class AddClumnPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :rate, :float
  end
end
