# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require "open-uri"
# require "yaml"

# puts "Destroy ingredients"
# Ingredient.destroy_all

# puts "Destroy Cocktails"
# Cocktail.destroy_all

# file = "https://raw.githubusercontent.com/ben7x7/MisterCocktail/master/drinks.yml"
# sample = YAML.load(open(file).read)

# puts 'creating ingredients'
# sample["ingredients"].each do |ingredient|
#   Ingredient.create! ingredient
# end

# puts 'Finished'

# ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum)
# ingredients.each { |ingredient| Ingredient.create(name: ingredient) }

Ingredient.destroy_all
Cocktail.destroy_all


cocktails = [
  {
    name: "Scotch Sour",
    technique: "Dans un shaker à demi rempli de glace : verser le sucre, le jus de citron et le scotch whisky. Remuer et verser dans un verre à cocktail."
    },
  {
    name: "Alaska",
    technique: "Dans un shaker à demi rempli de glace : verser la chartreuse jaune et le gin. Frapper et verser dans un verre à cocktail."
    },
  {
    name: "White Spider",
    technique: "Directement dans un verre old fashioned : verser la crème de menthe blanche et la vodka."
    },
  {
    name: "Troïka",
    technique: "Dans un shaker à demi rempli de glace : verser le jus de citron, le Cointreau et la vodka. Frapper et verser dans un verre à cocktail."
    },
  {
    name: "Blue Lagoon",
    technique: "Dans un shaker à demi rempli de glace : verser le jus de citron, le Curacao bleu et la vodka. Frapper et verser dans un verre à cocktail. Décorer d\'un zeste de citron."
    },
  {
    name: "Bloody Mary",
    technique: "Directement dans un tumbler rempli de glace : saupoudrer de sel de céleri, de poivre et ajouter un trait de tabasco, un trait de sauce anglaise, le jus de citron, la vodka et le jus de tomate. Remuer."
    },
  {
    name: "Daiquiri",
    technique: "Dans un shaker à demi rempli de glace : verser le sirop de sucre de canne, le jus de citron et le rhum blanc. Frapper et verser dans un verre à cocktail."
    },
  {
    name: "Barbottage",
    technique: "Dans un shaker à demi rempli de glace : verser le sirop de grenadine, le jus de citron et le jus d\'orange. Frapper et verser dans une flute à champagne. Terminer au champagne."
    },
  {
    name: "Margarita",
    technique: "Dans un shaker à demi rempli de glace : verser le jus de citron, le Cointreau et la tequila. Frapper et verser dans un verre à cocktail. Givrer la moitié du verre avec du sel fin."
    },
  {
    name: "White Lady",
    technique: "Dans un shaker à demi rempli de glace : verser le jus de citron, le Cointreau et le gin. Frapper et verser dans un verre à cocktail."
    },
  {
    name: "Silver Fizz",
    technique: "Dans un shaker à demi rempli de glace : verser le sucre, le blanc d\'oeuf, le jus de citron et le gin. Frapper et verser dans un tumbler sans glace. Terminer au soda."
    },
  {
    name: "Negroni",
    technique: "Directement dans un tumbler rempli de glace : verser le vermouth italien, le Bitter Campari et le gin. Remuer et ajouter une demi-tranche d\'orange."
    },
  {
    name: "Gin Fizz",
    technique: "Dans un shaker à demi rempli de glace : verser le sucre, le jus de citron et le gin. Frapper et verser dans un tumbler sans glace. Terminer au soda."
    },
  {
    name: "Tequila Sunrise",
    technique: "Directement au tumbler rempli de glace : verser le jus d\'orange et la tequila. Remuer et terminer par un trait de sirop de grenadine."
    },
  {
    name: "Bronx",
    technique: "Dans un shaker à demi rempli de glace : verser le jus d\'orange, le vermouth dry, le vermouth italien et le gin. Frapper et verser dans un verre à cocktail"
    },
  {
    name: "Side Car",
    technique: "Dans un shaker à demi rempli de glace : verser le jus de citron, le Cointreau et le cognac. Frapper et verser dans un verre à cocktail."
    },
  {
    name: "Planter's Punch",
    technique: "Directement dans un tumbler rempli de glace : verser le jus de citron, le jus d\'orange, le jus d\'ananas, le curaçao orange, le marasquin et le rhum blanc. Remuer et terminer par un trait de rhum ambré"
    },
  {
    name: "Jack Rose",
    technique: "Dans un shaker à demi rempli de glace : verser la grenadine, le jus de citron et le calvados. Frapper et verser dans un verre à cocktail."
    },
  {
    name: "Black Russian",
    technique: "Directement dans un verre old fashioned : verser la liqueur de café puis la vodka."
    },
  {
    name: "God Mother",
    technique: "Directement dans un verre old fashioned rempli de glace : verser l\'Amaretto di Saronno, puis la vodka. Remuer"
    },
  {
    name: "God Father",
    technique: "Directement dans un verre old fashioned rempli de glace : verser l\'Amaretto di Saronno, puis le scotch whisky. Remuer"
  }
]

cocktails.each { |cocktail| Cocktail.create(cocktail) }

ingredients = [
  {
    name: "Jus de Citron"
    },
  {
    name: "Jus d\'Ananas"
    },
  {
    name: "Jus d\'Orange"
    },
  {
    name: "Jus de Tomate"
    },
  {
    name: "Sirop de Grenadine"
    },
  {
    name: "Sirop de Sucre"
    },
  {
    name: "Soda"
    },
  {
    name: "Marasquin"
    },
  {
    name: "Calvados"
    },
  {
    name: "Cointreau"
    },
  {
    name: "Curaçao Orange"
    },
  {
    name: "Curaçao Bleu"
    },
  {
    name: "Champagne"
    },
  {
    name: "Cognac"
    },
  {
    name: "Amaretto di Saronno"
    },
  {
    name: "Crème de Menthe Blanche"
    },
  {
    name: "Bitter Campari"
    },
  {
    name: "Angostura Bitter"
    },
  {
    name: "Vermouth Dry"
    },
  {
    name: "Vermouth Italien"
    },
  {
    name: "Chartreuse Jaune"
    },
  {
    name: "Gin"
    },
  {
    name: "Tequila"
    },
  {
    name: "Vodka"
    },
  {
    name: "Scotch Whisky"
    },
  {
    name: "Rhum Blanc"
    },
  {
    name: "Rhum Ambré"
    },
  {
    name: "sucre"
    },
  {
    name: "poivre"
    },
  {
    name: "tabasco"
    },
  {
    name: "sauce anglaise"
    },
  {
    name: "blanc d\'oeuf"
    },
  {
    name: "sel de céleri"
    }
]

ingredients.each { |ingredient| Ingredient.create(ingredient) }
