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
pcu = comedy.films.create!(title: "PCU")
vinny = comedy.films.create!(title: "My Cousin Vinny")
gm_vietnam = comedy.films.create!(title: "Good Morning, Vietnam")
trading_places = comedy.films.create!(title: "Trading Places")
caddyshack = comedy.films.create!(title: "Caddyshack")
# drama
unbreakable = drama.films.create(title: "Unbreakable")
inception = drama.films.create!(title: "Inception")
devils_advocate = drama.films.create!(title: "The Devil's Advocate")
rocky = drama.films.create!(title: "Rocky")
top_gun = drama.films.create!(title: "Top Gun")
# romance
titanic = romance.films.create(title: "Titanic")
pretty_woman = romance.films.create!(title: "Pretty Woman")
as_good = romance.films.create!(title: "As Good As It Gets")
# horror
texas = horror.films.create(title: "Texas Chainsaw Massacre")
halloween = horror.films.create!(title: "Halloween(1978)")
exorcist = horror.films.create!(title: "The Excorcist")
carrie = horror.films.create!(title: "Carrie")
scream = horror.films.create!(title: "Scream")
chucky = horror.films.create!(title: "Child's Play")
# scifi
wars = scifi.films.create(title: "Star Wars episode 1")
robocop = scifi.films.create!(title: "Robocop")
alien = scifi.films.create!(title: "Alien")
#action
ateam = action.films.create(title: "The A-Team")

# USERS
tom = User.create!(username: 'tomtom', email: "tom@tom.com", password: "tomtom")
ken = User.create!(username: 'kenken', email: "ken@ken.ken", password: "kenken")
ally = User.create!(username: 'ally', email: "ally@ally.com", password: "ally")



# FILM RATINGS
pcu.ratings.create(value: 3, user: tom)
pcu.ratings.create(value: 5, user: ally)
pcu.ratings.create(value: 3, user: ken)
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
pcu_review = pcu.reviews.create!(title: 'Hilarious', body: "Laughed my ass off the entire time", user: tom)
pcu_view = pcu.reviews.create!(title: "It was funny... ", body: "if that's your kind of comedy. Definitely not a movie for everyone.", user: ken)
unbreakable_review = unbreakable.reviews.create!(title: "broke my heart", body: 'so much truth in the scenes', user: ken)
unbreakable_view = unbreakable.reviews.create!(title: 'Some things will never be destroyed.', body: "Just as the title suggests... this film is amazing", user: ally)
titanic_review = titanic.reviews.create!(title: "Oh my heart will go on", body: 'and on and on...', user: ally)

# FILM COMMENTS
pcu_comment = pcu.comments.create(body: "funniest movie I've ever seen!", user: tom)
unbreakable_comment = unbreakable.comments.create(body: "definitely a must see!", user: ken)

# REVIEW RATINGS
pcu_review_rating = pcu_review.ratings.create(value: 4, user: ken)
unbreakable_review_rating = unbreakable_review.ratings.create(value: 3, user: tom)

# REVIEW COMMENTS
pcu_review_comment = pcu_review.comments.create(body: "I completely agree!", user: ken)
unbreakable_review_comment = unbreakable_review.comments.create(body: "story of my life...", user: tom)
