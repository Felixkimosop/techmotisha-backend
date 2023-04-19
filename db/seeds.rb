# # Seed categories
# # category1 = Category.create(name: "Web Development")
# # category2 = Category.create(name: "Machine Learning")
# # category3 = Category.create(name: "Mobile Development")

# Seed users


# # puts"create contents"
content1 = Content.create(title: "How to build a RESTful API with Ruby on Rails", description: "Learn how to build a RESTful API with Ruby on Rails using the Active Model Serializers gem.", kind: "video", url: "https://www.youtube.com/watch?v=QojnRc7SS9o", thumbnail: "https://i.ytimg.com/vi/QojnRc7SS9o/maxresdefault.jpg", category_id: 7, user_id: 11)
content2 = Content.create(title: "Introduction to Artificial Intelligence", description: "This course covers the basics of artificial intelligence, including machine learning, neural networks, and natural language processing.", kind: "article", url: "https://www.coursera.org/learn/ai-for-everyone", thumbnail: "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d3njjcbhbojbot.cloudfront.net/uploads/image/image/250162/large_6d11d328e16450b206f25910df46c0da.jpg?auto=format%2Ccompress&dpr=2&w=640&h=480", category_id: 8, user_id: 12)
# Content.create(title: "Introduction to Machine Learning", description: "Learn the basics of machine learning, including linear regression, logistic regression, and decision trees.", kind: "video", url: "https://www.youtube.com/watch?v=HcqpanDadyQ", thumbnail: "https://i.ytimg.com/vi/HcqpanDadyQ/maxresdefault.jpg", category_id: 9, user_id: 9)

# comment1 = Comment.create(content_id: content1.id, user_id: user2.id, comment: "Great post!", parent_id: 0, body: "I really enjoyed reading this.")
# comment2 = Comment.create(content_id: content1.id, user_id: user1.id, comment: "Thanks for reading!", parent_id: comment1.id, body: "I appreciate the feedback.")
# comment3 = Comment.create(content_id: content2.id, user_id: user1.id, comment: "Interesting read", parent_id: 0, body: "I found some of the ideas in this post really thought-provoking.")

# # # Seed subscriptions
# # subscription1 = Subscription.create(category_id:2, user_id:2)
# # subscription2 = Subscription.create(category_id:1, user_id:1)

# # # Seed wishlists
# # wishlist1 = Wishlist.create(content_id:2, user_id:2)
# # wishlist2 = Wishlist.create(content_id:1, user_id:4)
# create some users and contents first

# user1 = User.create(name: "John Doe", email: "johndoe@example.com", password: "password", role: "admin", profile_picture: "https://example.com/profile_picture.jpg")
# user2 = User.create(name: "Jane Smith", email: "janesmith@example.com", password: "password", role: "user", profile_picture: "https://example.com/profile_picture.jpg")
# content1 = Content.create(title: "My First Post", description: "Check out my blog post", kind: "article", url: "https://example.com/my-first-post", thumbnail: "https://example.com/thumbnail.jpg", category_id: 1, user_id: 1)
# content2 = Content.create(title: "My Second Post", description: "Another post on my blog", kind: "article", url: "https://example.com/my-second-post", thumbnail: "https://example.com/thumbnail2.jpg", category_id: 1, user_id: 2)

# create some comments

# comment1 = Comment.create(content_id: content1.id, user_id: user2.id, comment: "Great post!", parent_id: 0, body: "I really enjoyed reading this.")
# comment2 = Comment.create(content_id: content1.id, user_id: user1.id, comment: "Thanks for reading!", parent_id: comment1.id, body: "I appreciate the feedback.")
# comment3 = Comment.create(content_id: content2.id, user_id: user1.id, comment: "Interesting read", parent_id: 0, body: "I found some of the ideas in this post really thought-provoking.")
