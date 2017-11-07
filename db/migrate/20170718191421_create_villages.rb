class CreateVillages < ActiveRecord::Migration[5.1]
  def change
    create_table :villages do |t|
      t.references :user, foreign_key: true
      t.string :display_name

      t.timestamps
    end
  end
end
