5.times do |n|
  if n==0
    name = "None"
  else
    name = "12T#{n+1}"
  end
  Course.create(name: name,
    users: User.create([
      { email: "admin#{n+1}@example.com", password: "12345678", password_confirmation: "12345678", role: 2},
      { email: "teacher#{n+1}@example.com", password: "12345678", password_confirmation: "12345678", role: 1},
      { email: "user#{n+1}@example.com", password: "12345678", password_confirmation: "12345678", role: 0}
  ]))
end

5.times do |n|
  name = "B20#{n+1}"
  Room.create!(name: name)
end

