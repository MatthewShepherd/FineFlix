# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Film.destroy_all
User.destroy_all
Review.destroy_all
Rating.destroy_all
Comment.destroy_all

# CATEGORIES
comedy = Category.create(name: "Comedy")
drama = Category.create(name: "Drama")
romance = Category.create(name: "Romance")
horror = Category.create(name: "Horror")
scifi = Category.create(name: "Sci-Fi")
action = Category.create(name: "Action")

# FILMS
# comedy
psu = comedy.films.create!(title: "PSU")
# drama
unbreakable = drama.films.create(title: "Unbreakable")
# romance
titanic = romance.films.create(title: "Titanic")
# horror
texas = horror.films.create(title: "Texas Chainsaw Massacre")
# scifi
wars = scifi.films.create(title: "Star Wars episode 1")
#action
ateam = action.films.create(title: "The A-Team")

# USERS
tom = User.create!(username: 'tomtom', email: "tom@tom.com", password: "tomtom")
ken = User.create!(username: 'kenken', email: "ken@ken.ken", password: "kenken")
ally = User.create!(username: 'ally', email: "ally@ally.com", password: "ally")



# FILM RATINGS
psu.ratings.create(value: 3, user: tom)
psu.ratings.create(value: 5, user: ally)
psu.ratings.create(value: 3, user: ken)
unbreakable.ratings.create(value: 2, user: ken)
unbreakable.ratings.create(value: 4, user: ally)
unbreakable.ratings.create(value: 3, user: tom)
titanic.ratings.create(value: 5, user: ally)
titanic.ratings.create(value: 2, user: tom)
titanic.ratings.create(value: 3, user: ken)
texas.ratings.create(value: 2, user: ally)
texas.ratings.create(value: 5, user: tom)
texas.ratings.create(value: 2, user: ken)
wars.ratings.create(value: 5, user: ken)
wars.ratings.create(value: 4, user: ally)
wars.ratings.create(value: 5, user: tom)
ateam.ratings.create(value: 4, user: ally)
ateam.ratings.create(value: 5, user: tom)
ateam.ratings.create(value: 4, user: ken)

# REVIEWS
psu_review = psu.reviews.create!(title: 'Hilarious', body: "Laughed my ass off the entire time", user: tom)
psu_view = psu.reviews.create!(title: "It was funny... ", body: "if that's your kind of comedy. Definitely not a movie for everyone.", user: ken)
unbreakable_review = unbreakable.reviews.create!(title: "broke my heart", body: 'so much truth in the scenes', user: ken)
unbreakable_view = unbreakable.reviews.create!(title: 'Some things will never be destroyed.', body: "Just as the title suggests... this film is amazing", user: ally)
titanic_review = titanic.reviews.create!(title: "Oh my heart will go on", body: 'and on and on...', user: ally)

# FILM COMMENTS
psu_comment = psu.comments.create(body: "funniest movie I've ever seen!", user: tom)
unbreakable_comment = unbreakable.comments.create(body: "definitely a must see!", user: ken)

# REVIEW RATINGS
psu_review_rating = psu_review.ratings.create(value: 4, user: ken)
unbreakable_review_rating = unbreakable_review.ratings.create(value: 3, user: tom)

# REVIEW COMMENTS
psu_review_comment = psu_review.comments.create(body: "I completely agree!", user: ken)
unbreakable_review_comment = unbreakable_review.comments.create(body: "story of my life...", user: tom)
