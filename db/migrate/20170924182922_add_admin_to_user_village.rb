class AddAdminToUserVillage < ActiveRecord::Migration[5.1]
  def change
    add_column :user_villages, :admin, :boolean
  end
end
