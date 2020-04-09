class AddUserintroductionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :introduction, :text
    add_column :users, :profile_img, :text
  end
end
