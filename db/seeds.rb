# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Create a test deck
Deck.create(name: "Technical Interview: JavaScript", description: "Prepare for your JavaScript Technical interview with these cards.", public: false)
#Create cards for the first test deck
Card.create(term: "Hoisting", definition: "Hoisting is JavaScript's default behavior of moving declarations to the top.", deck_id: 1)
Card.create(term: "Promises", definition: "The Promise object represents the eventual completion (or failure) of an asynchronous operation, and its resulting value.", deck_id: 1)
Card.create(term: "IIFE", definition: "Immediately invoked function expression. A JS function that runs as soon as it is defined.", deck_id: 1)
Card.create(term: "What is the difference between 'undefined' and 'not defined' in JavaScript?", definition: "If a variable is declared but not defined it is 'undefined' if it is neither declared nor defined it is 'not defined'", deck_id: 1)