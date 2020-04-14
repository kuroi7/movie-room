class AddUserIdToMyRankings < ActiveRecord::Migration[5.0]
  def change
    add_column :my_rankings, :user_id, :integer
  end
end
