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

class VillageSerializer < ActiveModel::Serializer
  attributes :id, :display_name, :max_inscription_date, :event_date,
             :created_at, :updated_at

  has_many :users do |serializer|
    object.users.where.not(id: serializer.current_user.id)
  end
end
