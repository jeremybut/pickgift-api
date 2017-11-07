class CreateUserVillages < ActiveRecord::Migration[5.1]
  def change
    create_table :user_villages do |t|
      t.references :user, foreign_key: true
      t.references :village, foreign_key: true

      t.timestamps
    end
  end
end
