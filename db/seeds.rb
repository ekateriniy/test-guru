# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_list = ['Ben', 'Ann', 'Dolly', 'Scott', 'Lewis']
category_list = ['geography', 'math', 'chemistry', 'biology']

# title, level, category_id, author_id
test_list = [
  ['capitals', 1, 'geography', user_list.sample],
  ['countries', 2, 'geography', user_list.sample],
  ['land/water', 3, 'geography', user_list.sample],
  ['arithmetic', 1, 'math', user_list.sample],
  ['geometry', 3, 'math', user_list.sample],
  ['periodic_table', 2, 'chemistry', user_list.sample],
  ['thermodinamic', 3, 'chemistry', user_list.sample],
  ['anatomy', 3, 'biology', user_list.sample],
  ['botanics', 3, 'biology', user_list.sample],
  ['animals', 2, 'biology', user_list.sample]
]

# body, test_id
question_list = [
  ['What is the capital of Brazil?', 'capitals'],
  ['How many legs does a butterfly have?', 'animals'],
  ['What is a rhinos horn made of?', 'animals'],
  ['Smallest ocean is?', 'land/water'],
  ['Biggest desert is?', 'land/water'],
  ['Which country is famous for tulips?', 'countries'],
  ['How many bones are there in the human body?', 'anatomy'],
  ['What is the capital city of Canada?', 'capitals'],
  ['Where is Stonehenge located?', 'countries'],
  ['What is the symbol of Sodium?', 'periodic_table'],
  ['Neuron is the functional unit of?', 'anatomy'],
  ['How many provinces does China has?', 'countries'],
  ['what is the fastest land animal in the world?', 'animals'],
  ['What species do sharks belong to?', 'animals'],
  ['112 + 47 - (83 + 9)', 'arithmetic'],
  ['100 + 33', 'arithmetic'],
  ['What are the minimum degrees does an obtuse angle have?', 'geometry'],
  ['The full name of Sm element', 'periodic_table'],
  ['The full name of Sc element', 'periodic_table'],
  ['The full name of Be element', 'periodic_table'],
  ['Caffeine comes from what part of the coffee plant?', 'botanics'],
  ['Where was the first botanical garden?', 'botanics']
]

# body, correct, question_id the same as question_id in question_list
wrong_answer_list = [
  ['Rio', 'San Paolo'],
  ['2', '4'],
  ['Bone', 'Cartilage'],
  ['Pasific', 'Indian'],
  ['Sahara', 'Gobi'],
  ['Belgium', 'USA'],
  ['172', '324'],
  ['Alberta', 'Toronto'],
  ['Germany', 'Ireland'],
  ['S', 'So'],
  ['Bone', 'Stomack'],
  ['14', '29'],
  ['Kangaroo', 'Horse'],
  ['Mammal', 'Reptile'],
  ['42', '92'],
  ['153', '44'],
  ['90', '30'],
  ['Silicon', 'Selen'],
  ['Cobalt', 'Sulfur'],
  ['Carbon', 'Barium'],
  ['Steam', 'Germ'],
  ['England', 'France']
]

correct_answer_list = [
  'Brasilia',
  '6',
  'Keratin',
  'Arctic',
  'Antarctic',
  'The Netherlands',
  '206',
  'Ottawa',
  'England',
  'Na',
  'Brain',
  '23',
  'Cheetah',
  'Fish',
  '67',
  '133',
  '91',
  'Samarium',
  'Scandium',
  'Beryllium',
  'Seed',
  'Italy'
]

category_list.each { |title| Category.create(title: title) }
user_list.each { |name| User.create(name: name) }

test_list.each do |title, level, category, author|
  Test.create(
    title: title,
    level: level,
    category_id: Category.find_by(title: category).id,
    author_id: User.find_by(name: author).id
    )
end

question_list.each do |body, test|
  Question.create(body: body, test_id: Test.find_by(title: test).id)
end

wrong_answer_list.each_with_index do |answer, i| 
  answer.each { |body| Answer.create(body: body, question_id: i + 1) }
end

correct_answer_list.each_with_index { |body, i| Answer.create(body: body, question_id: i + 1, correct: true) }
