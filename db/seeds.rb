# frozen_string_literal: true

require 'faker'

User.create!(
  email: 'jeremy@tymate.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Jeremy',
  last_name: 'Buttice'
)

3.times do
  v = Village.create!(
    display_name: Faker::Name.name,
    max_inscription_date: Faker::Date.forward(23),
    event_date: Faker::Date.backward(14)
  )
  user = User.invite!(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  ) do |u|
    u.skip_invitation = true
  end
  v.users << user
end
