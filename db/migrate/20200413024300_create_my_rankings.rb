class CreateMyRankings < ActiveRecord::Migration[5.0]
  def change
    create_table :my_rankings do |t|
      t.text :title
      t.text :content
      t.integer :row_order
      t.timestamps
    end
  end
end
