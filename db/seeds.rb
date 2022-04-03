# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!(
  [
    {name: 'Ben'},
    {name: 'Ann'},
    {name: 'Dolly'},
    {name: 'Scott'},
    {name: 'Lewis'}
  ]
)

categories = Category.create!(
  [
    {title: 'geography'},
    {title: 'math'},
    {title: 'chemistry'},
    {title: 'biology'}
  ]
)

categories_id = categories.to_h { |category| [category.title, category.id] }

tests = Test.create!(
  [
    {title: 'capitals', level: 1, category_id: categories_id['geography'], author_id: users.sample.id},
    {title: 'countries', level: 2, category_id: categories_id['geography'], author_id: users.sample.id},
    {title: 'land/water', level: 3, category_id: categories_id['geography'], author_id: users.sample.id},
    {title: 'arithmetic', level: 1, category_id: categories_id['math'], author_id: users.sample.id},
    {title: 'geometry', level: 3, category_id: categories_id['math'], author_id: users.sample.id},
    {title: 'periodic_table', level: 2, category_id: categories_id['chemistry'], author_id: users.sample.id},
    {title: 'thermodinamic', level: 3, category_id: categories_id['chemistry'], author_id: users.sample.id},
    {title: 'anatomy', level: 3, category_id: categories_id['biology'], author_id: users.sample.id},
    {title: 'botanics', level: 3, category_id: categories_id['biology'], author_id: users.sample.id},
    {title: 'animals', level: 2, category_id: categories_id['biology'], author_id: users.sample.id}
  ]
)

tests_id = tests.to_h { |test| [test.title, test.id] }

Question.create!(
  [
    {body: 'What is the capital of Brazil?', test_id: tests_id['capitals']},
    {body: 'How many legs does a butterfly have?', test_id: tests_id['animals']},
    {body: 'What is a rhinos horn made of?', test_id: tests_id['animals']},
    {body: 'Smallest ocean is?', test_id: tests_id['land/water']},
    {body: 'Biggest desert is?', test_id: tests_id['land/water']},
    {body: 'Which country is famous for tulips?', test_id: tests_id['countries']},
    {body: 'How many bones are there in the human body?', test_id: tests_id['anatomy']},
    {body: 'What is the capital city of Canada?', test_id: tests_id['capitals']},
    {body: 'Where is Stonehenge located?', test_id: tests_id['countries']},
    {body: 'What is the symbol of Sodium?', test_id: tests_id['periodic_table']},
    {body: 'Neuron is the functional unit of?', test_id: tests_id['anatomy']},
    {body: 'How many provinces does China has?', test_id: tests_id['countries']},
    {body: 'what is the fastest land animal in the world?', test_id: tests_id['animals']},
    {body: 'What species do sharks belong to?', test_id: tests_id['animals']},
    {body: '112 + 47 - (83 + 9)', test_id: tests_id['arithmetic']},
    {body: '100 + 33', test_id: tests_id['arithmetic']},
    {body: 'What are the minimum degrees does an obtuse angle have?', test_id: tests_id['geometry']},
    {body: 'The full name of Sm element', test_id: tests_id['periodic_table']},
    {body: 'The full name of Sc element', test_id: tests_id['periodic_table']},
    {body: 'The full name of Be element', test_id: tests_id['periodic_table']},
    {body: 'Caffeine comes from what part of the coffee plant?', test_id: tests_id['botanics']},
    {body: 'Where was the first botanical garden?', test_id: tests_id['botanics']}
  ]
)

Answer.create!(
  [
    {body: 'Rio', question_id: 1},
    {body: 'San Paolo', question_id: 1},
    {body: 'Brasilia', question_id: 1, correct: true},
    {body: '2', question_id: 2},
    {body: '4', question_id: 2},
    {body: 6, question_id: 2, correct: true},
    {body: 'Bone', question_id: 3},
    {body: 'Cartilage', question_id: 3},
    {body: 'Keratin', question_id: 3, correct: true},
    {body: 'Pasific', question_id: 4},
    {body: 'Indian', question_id: 4},
    {body: 'Arctic', question_id: 4, correct: true},
    {body: 'Sahara', question_id: 5},
    {body: 'Gobi', question_id: 5},
    {body: 'Antarctic', question_id: 5, correct: true},
    {body: 'Belgium', question_id: 6},
    {body: 'USA', question_id: 6},
    {body: 'The Netherlands', question_id: 6, correct: true},
    {body: '172', question_id: 7},
    {body: '324', question_id: 7},
    {body: '206', question_id: 7, correct: true},
    {body: 'Alberta', question_id: 8},
    {body: 'Toronto', question_id: 8},
    {body: 'Ottawa', question_id: 8, correct: true},
    {body: 'Germany', question_id: 9},
    {body: 'Ireland', question_id: 9},
    {body: 'England', question_id: 9, correct: true},
    {body: 'S', question_id: 10},
    {body: 'So', question_id: 10},
    {body: 'Na', question_id: 10, correct: true},
    {body: 'Bone', question_id: 11},
    {body: 'Stomack', question_id: 11},
    {body: 'Brain', question_id: 11, correct: true},
    {body: '14', question_id: 12},
    {body: '29', question_id: 12},
    {body: '23', question_id: 12, correct: true},
    {body: 'Kangaroo', question_id: 13},
    {body: 'Horse', question_id: 13},
    {body: 'Cheetah', question_id: 13, correct: true},
    {body: 'Mammal', question_id: 14},
    {body: 'Reptile', question_id: 14},
    {body: 'Fish', question_id: 14, correct: true},
    {body: '42', question_id: 15},
    {body: '92', question_id: 15},
    {body: '67', question_id: 15, correct: true},
    {body: '153', question_id: 16},
    {body: '44', question_id: 16},
    {body: '133', question_id: 16, correct: true},
    {body: '90', question_id: 17},
    {body: '30', question_id: 17},
    {body: '91', question_id: 17, correct: true},
    {body: 'Silicon', question_id: 18},
    {body: 'Selen', question_id: 18},
    {body: 'Samarium', question_id: 18, correct: true},
    {body: 'Cobalt', question_id: 19},
    {body: 'Sulfur', question_id: 19},
    {body: 'Scandium', question_id: 19, correct: true},
    {body: 'Carbon', question_id: 20},
    {body: 'Barium', question_id: 20},
    {body: 'Beryllium', question_id: 20, correct: true},
    {body: 'Steam', question_id: 21},
    {body: 'Germ', question_id: 21},
    {body: 'Seed', question_id: 21, correct: true},
    {body: 'England', question_id: 22},
    {body: 'France', question_id: 22},
    {body: 'Italy', question_id: 22, correct: true}
  ]
)

TestsUsers.create!(
    [
        {user_id: 1, test_id: 2},
        {user_id: 1, test_id: 5},
        {user_id: 1, test_id: 3},
        {user_id: 4, test_id: 1},
        {user_id: 4, test_id: 4},
    ]
)
