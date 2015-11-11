# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all

User.create(
  email: 'foo@bar.com',
  password: 'foobarbar'
)

5.times do
  user = User.new(
    email: Faker::Internet.email ,
    password: Faker::Internet.password(8)
  )
  user.save
  5.times do
    Post.create(
      title: Faker::Lorem.sentence(1),
      description: Faker::Lorem.sentence(2),
      story: Faker::Lorem.paragraph(2, true),
      user_id: user.id,
      picture: "https://robohash.org/sedanimifacere.png?size=300x300&set=set1"
    )
  end
end
