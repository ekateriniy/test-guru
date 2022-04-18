# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# users = User.create!(
#   [
#     {name: 'Ben', email: 'ben@example.com', password: '111111'},
#     {name: 'Ann', email: 'ann@example.com', password: '2222222'},
#     {name: 'Dolly', email: 'dolly@example.com', password: '3333333'},
#     {name: 'Scott', email: 'scott@example.com', password: '4444444'},
#     {name: 'Lewis', email: 'lewis@example.com', password: '5555555'}
#   ]
# )

users = [User.first, User.last]

categories = Category.create!(
  [
    {title: 'geography'},
    {title: 'math'},
    {title: 'chemistry'},
    {title: 'biology'}
  ]
)

tests = Test.create!(
  [
    {title: 'capitals', level: 1, category: categories[0], author: users.sample},
    {title: 'countries', level: 2, category: categories[0], author: users.sample},
    {title: 'land/water', level: 3, category: categories[0], author: users.sample},
    {title: 'arithmetic', level: 1, category: categories[1], author: users.sample},
    {title: 'geometry', level: 3, category: categories[1], author: users.sample},
    {title: 'periodic_table', level: 2, category: categories[2], author: users.sample},
    {title: 'thermodinamic', level: 3, category: categories[2], author: users.sample},
    {title: 'anatomy', level: 3, category: categories[3], author: users.sample},
    {title: 'botanics', level: 3, category: categories[3], author: users.sample},
    {title: 'animals', level: 2, category: categories[3], author: users.sample}
  ]
)

questions = Question.create!(
  [
    {body: 'What is the capital of Brazil?', test: tests[0]},
    {body: 'How many legs does a butterfly have?', test: tests[9]},
    {body: 'What is a rhinos horn made of?', test: tests[9]},
    {body: 'Smallest ocean is?', test: tests[2]},
    {body: 'Biggest desert is?', test: tests[2]},
    {body: 'Which country is famous for tulips?', test: tests[1]},
    {body: 'How many bones are there in the human body?', test: tests[7]},
    {body: 'What is the capital city of Canada?', test: tests[0]},
    {body: 'Where is Stonehenge located?', test: tests[1]},
    {body: 'What is the symbol of Sodium?', test: tests[5]},
    {body: 'Neuron is the functional unit of?', test: tests[7]},
    {body: 'How many provinces does China has?', test: tests[1]},
    {body: 'what is the fastest land animal in the world?', test: tests[9]},
    {body: 'What species do sharks belong to?', test: tests[9]},
    {body: '112 + 47 - (83 + 9)', test: tests[3]},
    {body: '100 + 33', test: tests[3]},
    {body: 'What are the minimum degrees does an obtuse angle have?', test: tests[4]},
    {body: 'The full name of Sm element', test: tests[5]},
    {body: 'The full name of Sc element', test: tests[5]},
    {body: 'The full name of Be element', test: tests[5]},
    {body: 'Caffeine comes from what part of the coffee plant?', test: tests[8]},
    {body: 'Where was the first botanical garden?', test: tests[8]}
  ]
)

Answer.create!(
  [
    {body: 'Rio', question: questions[0]},
    {body: 'San Paolo', question: questions[0]},
    {body: 'Brasilia', question: questions[0], correct: true},
    {body: '2', question: questions[1]},
    {body: '4', question: questions[1]},
    {body: 6, question: questions[1], correct: true},
    {body: 'Bone', question: questions[2]},
    {body: 'Cartilage', question: questions[2]},
    {body: 'Keratin', question: questions[2], correct: true},
    {body: 'Pasific', question: questions[3]},
    {body: 'Indian', question: questions[3]},
    {body: 'Arctic', question: questions[3], correct: true},
    {body: 'Sahara', question: questions[4]},
    {body: 'Gobi', question: questions[4]},
    {body: 'Antarctic', question: questions[4], correct: true},
    {body: 'Belgium', question: questions[5]},
    {body: 'USA', question: questions[5]},
    {body: 'The Netherlands', question: questions[5], correct: true},
    {body: '172', question: questions[6]},
    {body: '324', question: questions[6]},
    {body: '206', question: questions[6], correct: true},
    {body: 'Alberta', question: questions[7]},
    {body: 'Toronto', question: questions[7]},
    {body: 'Ottawa', question: questions[7], correct: true},
    {body: 'Germany', question: questions[8]},
    {body: 'Ireland', question: questions[8]},
    {body: 'England', question: questions[8], correct: true},
    {body: 'S', question: questions[9]},
    {body: 'So', question: questions[9]},
    {body: 'Na', question: questions[9], correct: true},
    {body: 'Bone', question: questions[10]},
    {body: 'Stomack', question: questions[10]},
    {body: 'Brain', question: questions[10], correct: true},
    {body: '14', question: questions[11]},
    {body: '29', question: questions[11]},
    {body: '23', question: questions[11], correct: true},
    {body: 'Kangaroo', question: questions[12]},
    {body: 'Horse', question: questions[12]},
    {body: 'Cheetah', question: questions[12], correct: true},
    {body: 'Mammal', question: questions[13]},
    {body: 'Reptile', question: questions[13]},
    {body: 'Fish', question: questions[13], correct: true},
    {body: '42', question: questions[14]},
    {body: '92', question: questions[14]},
    {body: '67', question: questions[14], correct: true},
    {body: '153', question: questions[15]},
    {body: '44', question: questions[15]},
    {body: '133', question: questions[15], correct: true},
    {body: '90', question: questions[16]},
    {body: '30', question: questions[16]},
    {body: '91', question: questions[16], correct: true},
    {body: 'Silicon', question: questions[17]},
    {body: 'Selen', question: questions[17]},
    {body: 'Samarium', question: questions[17], correct: true},
    {body: 'Cobalt', question: questions[18]},
    {body: 'Sulfur', question: questions[18]},
    {body: 'Scandium', question: questions[18], correct: true},
    {body: 'Carbon', question: questions[19]},
    {body: 'Barium', question: questions[19]},
    {body: 'Beryllium', question: questions[19], correct: true},
    {body: 'Steam', question: questions[20]},
    {body: 'Germ', question: questions[20]},
    {body: 'Seed', question: questions[20], correct: true},
    {body: 'England', question: questions[21]},
    {body: 'France', question: questions[21]},
    {body: 'Italy', question: questions[21], correct: true}
  ]
)
