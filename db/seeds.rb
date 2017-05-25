# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#Adresse.destroy_all
#Article.destroy_all
#Commande.destroy_all
#Plat.destroy_all
#Restaurant.destroy_all
#User.destroy_all
#Ville.destroy_all
#Widget.destroy_all

Widget.create([{name: 'Chicago', description: 'sdsdsd', stock: -1}])

Ville.create([{name: 'Paris', description: 'Polué !'}])
Ville.create([{name: 'Lyon', description: 'Moche !'}])
Ville.create([{name: 'Toulon', description: 'Azur !'}])
Ville.create([{name: 'Renne', description: 'Froid !'}])
Ville.create([{name: 'Bordeaux', description: 'Vin !'}])

restaurant_list = [
    ["http://loremflickr.com/320/240/restaurant/?random=", "La locomotive", "RESTAURANT TRADITIONNEL du MARDI au SAMEDI de 11h30 à 14h30 et le SAMEDI à partir de 19h. CREPERIE tous les Samedis Midi et Soir.", Ville.where(:name => 'Paris')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "The Hello", "Restaurant joyeux, venez manger, boire dans la bonne humeur !", Ville.where(:name => 'Paris')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "ChinToque", "Vous vous sentez invincible ? Venez tenter l'experience tant culinaire que terrifiante !", Ville.where(:name => 'Lyon')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "Pronto Pizza", "Idéalement situé dans l'ancien coeur de Lagnieu, Pronto Pizza vous propose la dégustation de pizzas aux goûts divers et variés selon vos envies à emporter, en livraison à domicile ou sur votre lieu de travail*.", Ville.where(:name => 'Renne')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "La Cuisine des Anges", "Il est communément admis qu'il est impossible de satisfaire les innombrables goûts de personnes assises autour d'une grande table... Il est pourtant possible d' enthousiasmer 98% de convives même s'ils n'ont pas choisi leur menu.", Ville.where(:name => 'Renne')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "Au Chantilly", "Christelle vous proposent une cuisine de terroir, une cuisine maison, faite avec des produits de saison sélectionnés pour leur qualité et pour votre plus grand plaisir. Mais toujours avec le sourire, et toujours à des prix raisonnables !", Ville.where(:name => 'Renne')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "AMERICAN BISTRO 33", "Bienvenue à l'AMERICAN BISTRO 33 situé au Best Western Bordeaux Aéroport.", Ville.where(:name => 'Bordeaux')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "La maison", "Notre restaurant est un lieu de détente où l’on mange des produits naturels et de qualité servis en toute simplicité et authenticité mais avec le plus grand soin.", Ville.where(:name => 'Bordeaux')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "Romarin", "Au coeur de la Provence, aux portes du Lubéron, de la Camargue et des Alpilles, le Romarin vous accueille tout prés de “ la cité des papes ” haut lieu du théâtre avec le Festival d´Avignon, au coeur du vieux village de Barbentane, pour goûter la cuisine ensoleillée du sud de la France.", Ville.where(:name => 'Bordeaux')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "Romarin Pizza", "Au coeur de la Roma, aux portes du Langla, de la Koma et des Alpages, le RomarinPizza vous accueille tout prés de “ la cité des anglais ” haut lieu de fête avec le Festival d´Anton, au coeur du vieux village de Barberousse, pour goûter la tornade culinaire ensoleillée du Nord de la France.", Ville.where(:name => 'Bordeaux')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "The Dark Mention", "Customisez votre plat, autant de possibilités que ce que vous pourrez imaginer !", Ville.where(:name => 'Toulon')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "Le bistrot gourmand", "À deux pas du vieux Nice et de la Promenade des Anglais, Le Bistrot Gourmand vous ouvre son décor lumineux et design, avec sa grande vitre ouvrant sur la terrasse et sa gastronomie méditerranéenne devenue une référence.", Ville.where(:name => 'Toulon')],
    ["http://loremflickr.com/320/240/restaurant/?random=", "Le bistrot du Sommelier", "Au coeur du Village de Valbonne, Carine et Eric vous reçoivent au Bistrot du Sommelier pour un moment de plaisir et de détente.", Ville.where(:name => 'Toulon')]
]

restaurant_list.each do |image, name, description, ville|
  Restaurant.create(image: image, name: name, description: description, ville: ville.first)
end

plat_list = [
    ["Canard laqué", "Cerfeuille, Comcombre, canard", Restaurant.where(:name => 'La locomotive')],
    ["Rosebeef", "Rosebeef, sauce, menthe", Restaurant.where(:name => 'La locomotive')],
    ["Purée", "Patate", Restaurant.where(:name => 'La locomotive')],
    ["Tomates farcies", "Tomate, viande, sauce", Restaurant.where(:name => 'The Hello')],
    ["Rouleau de printemps", "Salade, pate, tomate", Restaurant.where(:name => 'The Hello')],
    ["Pizza chevre miel", "Chevre, miel, tomate", Restaurant.where(:name => 'Pronto Pizza')],
    ["Pizza Chorizo", "Chorizo, camembert, tomate", Restaurant.where(:name => 'Pronto Pizza')],
    ["Pizza Burger", "Farine, tomate, steak", Restaurant.where(:name => 'Pronto Pizza')],
    ["Rascasse crue", "Rascasse, sauce homard, sel", Restaurant.where(:name => 'ChinToque')],
    ["Magret de canard", "Magret, sauce au miel, poivre", Restaurant.where(:name => 'ChinToque')],
    ["Lasagnes", "Tomate, steak, sauce blache", Restaurant.where(:name => 'La Cuisine des Anges')],
    ["Ribbs barbecue", "Ribbs, Carotte, Tomate", Restaurant.where(:name => 'La Cuisine des Anges')],
    ["Epinards sauce miel", "Epinard, Soja, Tomate", Restaurant.where(:name => 'Au Chantilly')],
    ["Canard laqué sur feuille", "Cerfeuille, feuille, canard", Restaurant.where(:name => 'AMERICAN BISTRO 33')],
    ["Rosebeef tomate", "Rosebeef, tomate, menthe", Restaurant.where(:name => 'AMERICAN BISTRO 33')],
    ["Purée de petit poids", "Petits poids", Restaurant.where(:name => 'La maison')],
    ["Tomates seches", "Tomate, viande, sauce", Restaurant.where(:name => 'La maison')],
    ["Rouleau d'Hiver ", "Salade glacée, poivre glacé, tomate congelée", Restaurant.where(:name => 'Romarin')],
    ["Rouleau d'Autommne ", "Salade, poivre, tomate", Restaurant.where(:name => 'Romarin')],
    ["Pizza 1 fromage", "Chevre, miel, tomate", Restaurant.where(:name => 'Romarin Pizza')],
    ["Pizza steak", "Chorizo, tome, tomate", Restaurant.where(:name => 'Romarin Pizza')],
    ["Pizza 4 fromage", "Farine, paprika, steak", Restaurant.where(:name => 'Romarin Pizza')],
    ["Rascasse cuite", "Rascasse, sauce homard, sel", Restaurant.where(:name => 'The Dark Mention')],
    ["Magret de boeuf", "Magret, sauce au miel, poivre", Restaurant.where(:name => 'The Dark Mention')],
    ["Lasagnes fromage", "Tomate, steak, sauce blache", Restaurant.where(:name => 'Le bistrot gourmand')],
    ["Ribbs barbecue tomate", "Ribbs, Carotte, Tomate", Restaurant.where(:name => 'Le bistrot gourmand')],
    ["Epinards sauce miel", "Epinard, Soja, Tomate", Restaurant.where(:name => 'Le bistrot du Sommelier')]
]

plat_list.each do |name, description, restaurant|
  Plat.create(name: name, description: description, restaurant: restaurant.first)
end

User.create([{username: 'Admin', mdp: 'admin'}])
User.create([{username: 'Guest', mdp: 'guest'}])
User.create([{username: 'Meltial', mdp: 'meltial'}])
