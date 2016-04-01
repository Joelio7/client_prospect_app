include RandomData
4.times do
  User.create!(
  email: RandomData.random_email,
  password: RandomData.random_word
  )
end
users = User.all
User.create!(
email: 'joel.scalera@gmail.com',
password: 'coolApp92'
)
10.times do
Prospect.create!(
user: users.sample,
name: RandomData.random_name,
phone: RandomData.random_phone_number
)
end

puts "seeds finished"
puts "#{User.count} users created"
puts "#{Prospect.count} prospects created"
