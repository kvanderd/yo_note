20.times do
  User.create(username:   Faker::Internet.user_name,
              password:   'password')
end

50.times do 
  Note.create(title:   Faker::Lorem.sentence,
              body:    Faker::Lorem.sentence,
              user_id: rand(1..20))
end
