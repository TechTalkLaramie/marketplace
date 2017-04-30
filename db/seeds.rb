# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
["lawn care",
 "paint house exterior",
 "paint house interior",
 "wash car",
 "clean garage",
 "clean house",
 "clean kitchen",
 "clean business",
 "clean carpet",
 "clean gutters",
 "dog walker",
 "dog sitter",
 "babysitter",
 "petsitter",
 "dog groomer",
 "snow removal",
 "landscaping",
 "masonry",
 "electrical work",
 "welders",
 "computer programming",
 "web design",
 "graphics design",
 "electronics repairs",
 "painting",
 "accounting",
 "marketing",
 "social media",
 "sales",
 "tutoring"
].each {|c| Category.where(category_name: c).first_or_create }
