class RemoveUserIdToVillage < ActiveRecord::Migration[5.1]
  def change
    remove_column :villages, :user_id, :integer
  end
end
