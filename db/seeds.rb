# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






puts 'Cleaning database...'
Cocktail.destroy_all


puts 'Creating Ingredients...'
# Ingredient.create(name: "Angostura Bitters")
# Ingredient.create(name: "bourbon or rye whiskey")
# Ingredient.create(name: "sweet vermouth")
# Ingredient.create(name: "lime cordial")
# Ingredient.create(name: "gin")


puts 'Creating cocktails...'

cocktails_attributes = [
  {
    name:         'Old-Fashioned',
    url:          'https://hips.hearstapps.com/esq.h-cdn.co/assets/17/09/1488384964-old-fashioned.jpg',
    Intro:        'A character unto itself.'
  },
  {
    name:         'Manhattan',
    url:          'https://cdn.gearpatrol.com/wp-content/uploads/2016/07/Manhattan-Cocktail-Gear-Patrol-Lead-Full.jpg',
    Intro:        'An icon that you cannot pass by without noticing.'
  },

    {
    name:         'Whiskey Sour',
    url:          'https://assets.punchdrink.com/wp-content/uploads/2017/10/Social-Whiskey-Sour-3.jpg',
    Intro:        'The king of all sours.'
  },

    {
    name:         'Vodka Martini',
    url:          'http://goodstuffathome.com/wp-content/uploads/2017/03/Grapefruit-vodka-martini-1024x683.jpg',
    Intro:        'Clean, Crisp'
  },

    {
    name:         'The White Russian',
    url:          'http://recipesja.com/wp-content/uploads/2017/12/Cinnamon-White-Russian.jpg',
    Intro:        'A luscious, creamy mix.'
  },

    {
    name:         'Gimlet',
    url:          'http://cdn.liquor.com/wp-content/uploads/2017/04/18130027/gimlet-1200x628-social.jpg',
    Intro:        'Sweet, tart, and refreshing.'
  }
]
Cocktail.create!(cocktails_attributes)
puts 'Finished!'
