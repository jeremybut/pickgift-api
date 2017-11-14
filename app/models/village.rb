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

  # validates :display_name, :max_inscription_date, :event_date,
            # presence: true

  accepts_nested_attributes_for :users

  def invite!(emails, by)
    emails.each do |email|
      user = User.find_or_initialize_by(email: email)
      user.invite!(by) do |u|
        u.skip_invitation = true
      end
      users << user
      user.send_invitation_instructions
    end
  end
end
