User.destroy_all
Post.destroy_all

User.create(
  email: 'foo@bar.com',
  password: 'foobarbar'
)

5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
  user.save
  2.times do
    Post.create(
      title: Faker::Lorem.sentence(1),
      description: Faker::Lorem.sentence(2),
      story: Faker::Lorem.paragraph(2, true),
      user_id: user.id,
      picture: Faker::Placeholdit.image("300x300")
    )
  end
end
