# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all()
User.destroy_all()
Relationship.destroy_all()
Subscription.destroy_all()
Post.destroy_all()
Podcast.destroy_all()
Like.destroy_all()

20.times do
User.create(
    username: Faker::Internet.username,
    password: '1234',
    follows: Faker::Number.between(from: 1, to: 50),
    followers: Faker::Number.between(from: 1, to: 50),
    email: Faker::Internet.email,
    podcast_number: Faker::Number.between(from: 1, to: 50)
)
end

50.times do 
    Podcast.create(
        name:  Faker::Movie.quote,
        image: Faker::LoremFlickr.image(size: "50x60"),
        listens: Faker::Number.between(from: 1, to: 50),
        likes: Faker::Number.between(from: 1, to: 50)
    )
end

40.times do
    user = User.all.sample
    Post.create(
        content: Faker::Quote.famous_last_words,
        likes: Faker::Number.between(from: 1, to: 50),
        user_id: user.id
        
    )
end

40.times do
    user = User.all.sample
    post = Post.all.sample
    Comment.create(
        comment: Faker::Quote.famous_last_words,
        post_id: post.id,
        user_id: user.id
    )
end


200.times do
    user = User.all.sample
    post = Post.all.sample
    Like.create(
        post_id: post.id,
        user_id: user.id
    )
end

20.times do 
   user = User.all.sample
   friend = User.all.sample
   Relationship.create(
       user_id: user.id,
       friend_id: friend.id
   )

end


# Relationship.create({friend_id: 2, user_id: 1})
# Relationship.create({friend_id: 3, user_id: 2})
# Relationship.create({friend_id: 4, user_id: 3})
# Relationship.create({friend_id: 1, user_id: 5})
# Relationship.create({friend_id: 2, user_id: 7})
# Relationship.create({friend_id: 13, user_id: 8})
# Relationship.create({friend_id: 10, user_id: 14})
# Relationship.create({friend_id: 16, user_id: 11})
