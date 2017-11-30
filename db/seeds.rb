# frozen_string_literal: true

require 'faker'

User.create!(
  email: 'jeremy@tymate.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Jeremy',
  last_name: 'Buttice'
)

User.create!(
  email: 'teddy@tymate.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Teddy',
  last_name: 'Lecaillon'
)

Doorkeeper::Application.create!(
  name: 'Web',
  uid: 'a3309e8d-8ffe-4d1f-9feb-8ad018b45d3d',
  secret: '906e4ade-e5e8-4a05-a4e4-4b588d18fa08',
  redirect_uri: 'urn:ietf:wg:oauth:2.0:oob',
  scopes: 'web'
)

30.times do
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
  v.users << User.find(2)
end

UserVillage.where(user_id: 2).update_all(admin: true)
