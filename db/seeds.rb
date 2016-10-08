10.times do |n|
  email = "user#{n+1}@example.com"
  password = "password"
  User.create!(
               email: email,
               password:              password,
               password_confirmation: password)
end

5.times do |n|
  name = "B20#{n+1}"
  Room.create!(name: name)
end

5.times do |n|
  name = "12T#{n+1}"
  Course.create!(name: name)
end
