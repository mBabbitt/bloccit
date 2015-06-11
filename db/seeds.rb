require 'faker'
 
 # Create Posts
 50.times do
   Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end

Post.create!(
  title: "Testing",
  body: "Maybe this works"
)

Comment.create!(
  post: posts.sample,
  body: "Hopefully it does"
)


 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"