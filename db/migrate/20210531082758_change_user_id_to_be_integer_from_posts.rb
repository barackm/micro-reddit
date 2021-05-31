class ChangeUserIdToBeIntegerFromPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :user_id, :integer
  end
end
