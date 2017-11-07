# frozen_string_literal: true

# == Schema Information
#
# Table name: user_villages
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  village_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  invited    :boolean
#  admin      :boolean
#

class UserVillage < ApplicationRecord
  belongs_to :user
  belongs_to :village
end
