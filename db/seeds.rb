# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Users
# user = User.create(
#       title: "cup",
#   		description: "blue",
#   		price: 5,
#   		start_time: "2017-07-30 04:31:49",
#   		end_time: "2017-09-30 05:59:31",
#   		seller_id: 2
#   		)

# user2 = User.create(
#       title: "bike",
#   		description: "red bike",
#   		price: 100,
#   		start_time: "2017-08-30 04:31:49",
#   		end_time: "2017-10-30 05:59:31",
#   		seller_id: 8
#   		)
# user3 = User.create(
#       title: "dress",
#   		description: "black dress",
#   		price: 10,
#   		start_time: "2017-07-30 04:31:49",
#   		end_time: "2017-09-30 05:59:31",
#   		seller_id: 14
#   		)
# user4 = User.create(
#       title: "house",
#   		description: "big house",
#   		price: 4,
#   		start_time: "2017-07-30 04:31:49",
#   		end_time: "2017-09-30 05:59:31",
#   		seller_id: 21
#   		)
# user5 = User.create(
#       title: "dog",
#   		description: "blue dog",
#   		price: 500,
#   		start_time: "2017-07-30 04:31:49",
#   		end_time: "2017-09-30 05:59:31",
#   		seller_id: 22
#   		)

# Reviews 
review = Review.create(
      body: "cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup cup ",
  		rating: 3,
  		movie: 211672,
  		user_id: 3
  		)

review2 = Review.create(
      body: "bike bike bike bike bike bike bike bike bike bike bike ",
  		rating: 2,
  		movie: 315635,
  		user_id: 3
  		)
review3 = Review.create(
      body: "dress dress dress dress dress dress dress dress dress ",
  		rating: 3,
  		movie: 321612,
  		user_id: 3
  		)
review4 = Review.create(
      body: "house house house house house house house house house ",
  		rating: 5,
  		movie: 324852,
  		user_id: 3
  		)
review5 = Review.create(
      body: "dog dog dog dog dog dog dog dog dog dog dog dog dog dog",
  		rating: 5,
  		movie: 374720,
  		user_id: 3
  		)