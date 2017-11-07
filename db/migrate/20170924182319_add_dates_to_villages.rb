class AddDatesToVillages < ActiveRecord::Migration[5.1]
  def change
    add_column :villages, :max_inscription_date, :datetime
    add_column :villages, :event_date, :datetime
  end
end
