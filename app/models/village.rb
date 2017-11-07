# frozen_string_literal: true

# == Schema Information
#
# Table name: villages
#
#  id                   :integer          not null, primary key
#  display_name         :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  max_inscription_date :datetime
#  event_date           :datetime
#

class Village < ApplicationRecord
  has_many :user_villages
  has_many :users, through: :user_villages

  validates :display_name, :max_inscription_date,
            :event_date, presence: true
end
