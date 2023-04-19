# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding started"
puts"create categories"
Category.create(name: "Programming")
Category.create(name: "Artificial Intelligence")
Category.create(name: "Machine Learning")

puts"create users"
User.create(name: "Chiamaka Okonkwo", email: "chiamaka@gmail.com", password: "password", role: "admin", profile_picture: "https://randomuser.me/api/portraits/women/1.jpg")
User.create(name: "Olumide Adekunle", email: "olumide@yahoo.com", password: "password", role: "user", profile_picture: "https://randomuser.me/api/portraits/men/2.jpg")
User.create(name: "Adesua Olu", email: "adesua@gmail.com", password: "password", role: "user", profile_picture: "https://randomuser.me/api/portraits/women/3.jpg")
User.create(name: "Babatunde Johnson", email: "babatunde@yahoo.com", password: "password", role: "user", profile_picture: "https://randomuser.me/api/portraits/men/4.jpg")

puts"create contents"
Content.create(title: "How to build a RESTful API with Ruby on Rails", description: "Learn how to build a RESTful API with Ruby on Rails using the Active Model Serializers gem.", content_type: "video", url: "https://www.youtube.com/watch?v=QojnRc7SS9o", thumbnail: "https://i.ytimg.com/vi/QojnRc7SS9o/maxresdefault.jpg", category_id: 7, user_id: 11)
Content.create(title: "Introduction to Artificial Intelligence", description: "This course covers the basics of artificial intelligence, including machine learning, neural networks, and natural language processing.", content_type: "article", url: "https://www.coursera.org/learn/ai-for-everyone", thumbnail: "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d3njjcbhbojbot.cloudfront.net/uploads/image/image/250162/large_6d11d328e16450b206f25910df46c0da.jpg?auto=format%2Ccompress&dpr=2&w=640&h=480", category_id: 8, user_id: 12)
Content.create(title: "Introduction to Machine Learning", description: "Learn the basics of machine learning, including linear regression, logistic regression, and decision trees.", content_type: "video", url: "https://www.youtube.com/watch?v=HcqpanDadyQ", thumbnail: "https://i.ytimg.com/vi/HcqpanDadyQ/maxresdefault.jpg", category_id: 9, user_id: 9)

puts"create subscriptions"
Subscription.create(category_id: 7, user_id: 10)
Subscription.create(category_id: 8, user_id: 9)
Subscription.create(category_id: 9, user_id: 11)

puts"create wishlists"
Wishlist.create(content_id: 2, user_id: 9)
Wishlist.create(content_id: 1, user_id: 10)

puts"create comments"
Comment.create(content_id: 1, user_id: 9, comment: "Great tutorial! Thanks for sharing.", parent_id: nil)
Comment.create(content_id: 1, user_id: 10, comment: "I'm glad you found it helpful!", parent_id: nil)
Comment.create(content_id: 2, user_id: 11, comment: "This course is amazing. Highly recommend it.", parent_id: nil)


puts "seeding done"
