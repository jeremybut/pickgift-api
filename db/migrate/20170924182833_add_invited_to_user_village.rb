class AddInvitedToUserVillage < ActiveRecord::Migration[5.1]
  def change
    add_column :user_villages, :invited, :boolean
  end
end
