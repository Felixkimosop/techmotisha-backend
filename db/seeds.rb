# Comment.delete_all
# Content.delete_all
# User.delete_all



# Seed the database
# category1 = Category.create(name: "Action")
# category2 = Category.create(name: "Comedy")
# category3 = Category.create(name: "Drama")

# user1 = User.create(name: "John", email: "john@example.com", password: "password", role: "member", age: 30)
# user2 = User.create(name: "Jane", email: "jane@example.com", password: "password", role: "member", age: 25)

# content1 = Content.create(title: "Avengers: Endgame", description: "The Avengers assemble to undo Thanos' snap.", kind: "movie", url: "https://www.imdb.com/title/tt4154796/", thumbnail: "https://m.media-amazon.com/images/I/81+5l9z9+-L._AC_SY606_.jpg", category: category1, user: user1)
# content2 = Content.create(title: "The Office", description: "A mockumentary about life in a regional office of a paper company.", kind: "tv_show", url: "https://www.imdb.com/title/tt0386676/", thumbnail: "https://m.media-amazon.com/images/I/91KjmhNuX9L._AC_SY606_.jpg", category: category2, user: user2)

comment1 = Comment.create(body: "Great movie!", user_id:2, content_id:1)
comment2 = Comment.create(body: "This show is hilarious!", user_id:2, content_id:2)

reply1 = Reply.create(reply: "I agree!", comment_id:1)
reply2 = Reply.create(reply: "Me too!", comment_id:2)

subscription1 = Subscription.create(category_id:1, user_id:2)
subscription2 = Subscription.create(category_id:3, user_id:2)

wishlist1 = Wishlist.create(content_id:1, user_id:2)
wishlist2 = Wishlist.create(content_id:2, user_id:2)
