# README

# Flash Cards App API
# API for Flash Cards App that allows users to create decks of flash cards to help them study.
# Originally conceived of as a way to help prepare for Technical Interviews. 
# Should there be public and private decks?
# If there are public decks, they definitely need tags.

#ROUTES
#/ --> Home
#/account --> User Account Page
#/login
#/signup
#/logout

#ALL NEED USER LOGGED IN
#GET /api/decks
#GET /api/decks/:id
#POST /api/decks
#PUT /api/decks/:id
#DELETE /api/decks/:id

#GET /api/cards
#GET /api/cards/:id


#MODELS
#Deck
    * Name
    * Description
    * belongs_to User
    * has_many Cards
    * has_many Deck_Tags
    * has_many Tags through Deck_Tags
    * Public (bool) default to false
#Card
    * Term
    * Definition
    * belongs_to Deck
#Tag 
    *has_many Deck_Tags
    *has_many Decks through Deck_Tags
#Deck_Tags
    * Join table for Decks and Tags
    * belongs_to Deck
    * belongs_to Tag
#User
    * UserName
    * Password
    * Email
    * has_many Decks
    * has_many Cards through Decks


