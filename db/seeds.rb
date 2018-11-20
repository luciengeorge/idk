#cleaning database seed
# -------------------------------------------------------------------------------------
puts 'Cleaning Database...'

Hosting.destroy_all
Event.destroy_all
Wish.destroy_all
ActivityTag.destroy_all
Activity.destroy_all
Message.destroy_all
Conversation.destroy_all
Tag.destroy_all
Category.destroy_all
User.destroy_all

puts 'Database cleaned!'

#user seed
# -------------------------------------------------------------------------------------
puts 'Creating users...'

User.create!(first_name: 'lucien', last_name: 'george', age: 23, email: 'lucien@gmail.com', password: '123456')
User.create!(first_name: 'gaby', last_name: 'martinez', age: 24, email: 'gaby@gmail.com', password: '123456')
User.create!(first_name: 'izzy', last_name: 'brown', age: 23, email: 'izzy@gmail.com', password: '123456')
User.create!(first_name: 'ife', last_name: 'odugbesan', age: 29, email: 'ife@gmail.com', password: '123456')

puts 'Users created!'


#categories seed
# -------------------------------------------------------------------------------------
puts 'Creating categories...'

# category = Category.create!(title: 'food')
food = Category.create!(title: 'food')
drink = Category.create!(title: 'drink')
adventure = Category.create!(title: 'adventure')
chill = Category.create!(title: 'chill')

puts 'Categories created!'

#activities seed
# -------------------------------------------------------------------------------------
puts 'Creating activities...'


# food - shoreditch
visions_canteen = Activity.create!(category: food, title: 'Visions Canteen', location: '31 New Inn Yard, London EC2A 3EY', phone: '', hours: '', description: 'Trendy coffee shop with changing menu full of flavor', instagram: 'visionscanteen', price: '£', age: 0, photo: 'https://www.instagram.com/p/BqKLmvWnSyV/', date: '')
on_the_bab = Activity.create!(category: food, title: 'On The Bab', location: '305 Old St, London EC1V 9LA', phone: '020 7683 0361', hours: '', description: 'Korean small plates inspired by streetfood', instagram: 'onthebab', price: '£', age: 0, photo: 'http://onthebab.com/img/otb_main_img.jpg', date: '')
leroy = Activity.create!(category: food, title: 'Leroy', location: '18 Phipp St, London EC2A 4NU', phone: '020 7739 4443', hours: '', description: 'New venture from Michelin Starred restaurant Ellory', instagram: 'leroyshoreditch', price: '£££', age: 0, photo: 'https://static1.squarespace.com/static/5a87d1f19f07f5bf314b9618/5ab8fbbc0e2e720d9762640e/5ab8fc17f950b750934be86c/1522072628695/QuailSkewer.jpg?format=500w', date: '')
dishoom = Activity.create!(category: food, title: 'Dishoom', location: '7 Boundary St, London E2 7JE', phone: '020 7420 9324', hours: '', description: 'Fun destination for Indian inspired street food with upscale touches, several locations across london', instagram: 'dishoom', price: '££', age: 0, photo: 'http://www.dishoom.com/wp-content/uploads/2014/10/3.7.2.jpg', date: '')
nobu_shoreditch = Activity.create!(category: food, title: 'Nobu Shoreditch', location: '10-50 Willow St, London EC2A 4BH', phone: '020 7683 1200', hours: '', description: 'Located inside the contemporary designed Nobu Hotel Shoreditch, this restaurant offest high quality and posh sushi', instagram: 'nobuhotelsshoreditch', price: '£££', age: 0, photo: 'https://www.nobuhotelshoreditch.com/uploads/9/8/6/9/98696408/nobu-clairemenary-com-0803-2-orig_orig.jpg', date: '')
homeslice_pizza = Activity.create!(category: food, title: 'Homeslice Pizza', location: '374-378 Old St, London EC1V 9LT', phone: '020 3151 1121', hours: '', description: 'Creative style pizzas with a stylish vibe, with several locations around london', instagram: 'homesliceldn', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/558d04b2e4b0750606e349c9/55a226d6e4b0417147b993be/55d4371ee4b06405123587a5/1439971103332/_MG_4604.jpg?format=1000w', date: '')
shoreditch_house = Activity.create!(category: food, title: 'Shoreditch House', location: '1 Ebor St, London E1 6AW', phone: '020 7739 5040', hours: '', description: 'Members only club with a great rooftoop pool and several restaurants for the many types of foodies', instagram: 'shoreditchhouse', price: '££', age: 0, photo: 'http://cdn.ltstatic.com/2017/October/BA126693_942long.jpg', date: '')
bun_bun_bun = Activity.create!(category: food, title: 'Bun Bun Bun', location: '134B Kingsland Rd, London E2 8DY', phone: '020 7729 6494', hours: '', description: 'Authentic vietnamese food with simple decor. Also the only place in London to have Bun Cha Hanoi', instagram: 'bunldn', price: '£', age: 0, photo: 'http://www.bunbunbun.co/images/gallery/bunbunbun-07-1464521217.jpg', date: '')
dinerama = Activity.create!(category: food, title: 'Dinerama', location: '19 Great Eastern St, London EC2A 3EJ', phone: '020 3931 1270', hours: '', description: 'Global street food market housing different enviroments', instagram: 'streetfeastldn', price: '£', age: 0, photo: 'https://www.streetfeast.com/wp-content/uploads/2017/01/C44iF5ZVYAEAqxH-1.jpg', date: '')
dumpling_shack = Activity.create!(category: food, title: 'Dumpling Shack', location: '16 Horner Square, London E1 6EW', phone: '', hours: '', description: 'Chinese street food straight from Shanghai with the perfect dumpling', instagram: 'dumplingshack', price: '£', age: 0, photo: 'https://oldspitalfieldsmarket.com/cms/2017/10/Spitalfields-WEB-19.01.18-87.jpg', date: '')
abondance = Activity.create!(category: food, title: 'Abondance', location: '10A Lamb Street, Spitalfields, London E1 6EA', phone: '020 7247 7437', hours: '', description: 'Cheese for days, delicious fondue and raclette', instagram: '', price: '££', age: 0, photo: 'https://oldspitalfieldsmarket.com/cms/2017/09/Androuet-1-720x480.jpg', date: '')
boundary_rooftop = Activity.create!(category: food, title: 'Boundary Rooftop', location: '2-4 Boundary St, London E2 7DD', phone: '020 7729 1051', hours: '', description: 'Because when it is nice outside, why not enjoy a rooftop meal? Mediterranean food & panoramic views of London, whats better?', instagram: 'boundaryldn', price: '£££', age: 0, photo: 'https://www.telegraph.co.uk/content/dam/Travel/hotels/europe/united-kingdom/Hotels%20-%20England/london/boundary-london-rooftop-p.jpg', date: '')
brilliant_corners = Activity.create!(category: drink, title: 'Brilliant Corners', location: '470 Kingsland Rd, London E8 4AE', phone: '020 7812 9511', hours: '', description: 'Low lit cocktail bar & Japanese small plates featuring DJ sessions and live music', instagram: 'brilliant_cnrs', price: '££', age: 0, photo: 'http://brilliantcornerslondon.co.uk/wp-content/uploads/2016/01/moons.jpg', date: '')
bach = Activity.create!(category: drink, title: 'Bach Hoxton', location: '98 Hoxton St, London N1 6SG', phone: '020 7683 1591', hours: '', description: 'Perfect place to get a nice, healthy, and conscious bite with the ability to let your creativity and workflow going', instagram: 'wearethebach', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/56ddb9f960b5e9cd549d4744/579c9e3dc534a564c73232db/579ca68e2e69cf815410952e/1483454515316/IMG_2505.JPG?format=2500w', date: '')


#drinks shoreditch
dinerama_drinks = Activity.create!(category: drink, title: 'Dinerama', location: '19 Great Eastern St, London EC2A 3EJ', phone: '020 3931 1270', hours: '', description: 'Global street food & drink market housing different enviroments', instagram: 'streetfeastldn', price: '£', age: 0, photo: 'https://www.streetfeast.com/wp-content/uploads/2017/01/C44iF5ZVYAEAqxH-1.jpg', date: '')
shoreditch_house_drinks = Activity.create!(category: drink, title: 'Shoreditch House', location: '1 Ebor St, London E1 6AW', phone: '020 7739 5040', hours: '', description: 'Members only club with a great rooftoop pool and signature cocktails', instagram: 'shoreditchhouse', price: '££', age: 0, photo: 'http://cdn.ltstatic.com/2017/October/BA126693_942long.jpg', date: '')
happiness_forgets = Activity.create!(category: drink, title: 'Happiness Forgets', location: '8-9 Hoxton Square, London, N1 6NU', phone: '020 7613 0325', hours: '', description: 'Speakeasy bar in a tiny low-lit basement', instagram: 'happiness_hoxton', price: '££', age: 18, photo: 'https://static.designmynight.com/uploads/2014/04/Happiness-Forgets-optimised.jpg', date: '')
troy_bar = Activity.create!(category: drink, title: 'Troy Bar', location: '10 Hoxton St, London N1 6NG', phone: '020 7739 6695', hours: '', description: 'Community led bar with Caribbean Soul and live music', instagram: 'troybarofficial', price: '£', age: 18, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/07/e4/a8/59/troy-bar.jpg', date: '')
the_owl_and_pussycat = Activity.create!(category: drink, title: 'The Owl and the Pussycat', location: '34 Redchurch St, London E2 7DP', phone: '020 3487 0088', hours: '', description: 'Community led bar with Caribbean Soul and live music', instagram: 'troybarofficial', price: '£', age: 18, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/07/e4/a8/59/troy-bar.jpg', date: '')
bar_three = Activity.create!(category: drink, title: 'Bar Three', location: '65a Brushfield St, London E1 6AA', phone: '020 7101 0093', hours: '', description: 'A dark romantic bar, for the cocktail connoseiur', instagram: 'barthreelondon', price: '££', age: 18, photo: 'https://static.standard.co.uk/s3fs-public/thumbnails/image/2016/06/20/18/hawksmoor-spitalfields.jpg?width=1000&height=614&fit=bounds&format=pjpg&auto=webp&quality=70&crop=16:9,offset-y0.5', date: '')
brewhouse_and_kitchen = Activity.create!(category: drink, title: 'Brewhouse & Kitchen', location: '397-400 Geffrye St, London E2 8HZ', phone: '020 3861 8920', hours: '', description: 'All over london, this place offers great beers with the perfectly pairing of snacks', instagram: 'brewhouse_and_kitchen', price: '£', age: 0, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScqaPubegpnZcwxO2ExLWrtxULr38i9U9msXwZbKmxFIFqn2vonQ', date: '')
la_cabina = Activity.create!(category: drink, title: 'La Cabina', location: '232 Kingsland Rd, Dalston, London E2 8AX', phone: '020 3487 0896', hours: '', description: 'Hidden behind a metal door with a telephone bang, this speakeasy tapas and cocktail bar is bound to be a fun night', instagram: '', price: '£', age: 0, photo: 'https://media.timeout.com/images/103068785/1372/772/image.jpg', date: '')
brilliant_corners_drinks = Activity.create!(category: drink, title: 'Brilliant Corners', location: '470 Kingsland Rd, London E8 4AE', phone: '020 7812 9511', hours: '', description: 'Low lit cocktail bar & Japanese small plates featuring DJ sessions and live music', instagram: 'brilliant_cnrs', price: '££', age: 0, photo: 'http://brilliantcornerslondon.co.uk/wp-content/uploads/2016/01/moons.jpg', date: '')
the_espresso_martini_society = Activity.create!(category: drink, title: 'The Espresso Martini SOciety', location: '42 Hanbury St, London E1 5JL', phone: '', hours: '', description: 'Pop up bar serving the largest variety of Espresso Martinis in the world.', instagram: 'espressomartinisociety', price: '££', age: 0, photo: 'http://espressomartinisociety.com/wp-content/plugins/photoblocks-grid-gallery/public/pbm.php?zc=4&max=1600&src=http://espressomartinisociety.com/wp-content/uploads/2018/09/The-Not-Hot-Chocolate-1-1024x746.jpg', date: '8 November - 15 December 2018')



# adventure shoreditch
spitalfields_market = Activity.create!(category: adventure, title: 'Spitalfields Market', location: '16 Horner Square, London E1 6EW', phone: '', hours: '', description: 'Incredible market home to street food and artists', instagram: 'oldspitalfieldsmarket', price: 'Free', age: 0, photo: 'https://a1.ah-assets.net/uploads/photo/path/4366/retina_SpitalfieldsMarket-10.jpg', date: '')
sculpture_in_the_city = Activity.create!(category: adventure, title: 'Sculpture In the City', location: 'Bishopgate, London EC2M 3TL', phone: '', hours: '', description: 'Open air sculpture exhibition within the Bishopgate Gardens', instagram: 'sculptureinthecity', price: 'Free', age: 0, photo: 'https://www.sculptureinthecity.org.uk/wp-content/uploads/2018/06/Worldwide-web-of-somewheres-1024x683.jpg', date: '')
yayoi_kusuma_gallery = Activity.create!(category: adventure, title: 'Yayoi Kusama: The Moving Moment When I Went to The Universe', location: '16 Wharf Road, London N1 7RW', phone: '020 7336 8109', hours: '', description: 'Amazing works by Yayoi Kusama, known for polka dots, is back with a room made for Instagram.', instagram: '', price: 'Free', age: 0, photo: 'https://images.graph.cool/v1/cj6c28vh912680101ozc2paxj/cjmq3u9x71t5h0105vga6zrzz/0x0:4000x2670/960x960/kusa1110_infinity_mirrored_room_my_heart_is_dancing_into_the_universe_2018_a_lo.jpg', date: '3 October - 21 December 2018')
enigma_quest = Activity.create!(category: adventure, title: 'Enigma Quests - A Harry Potter Themed Escape Room', location: '2-12 Wilson Street, London EC2M 7LS', phone: '020 7377 9220', hours: '', description: 'Solve clues and riddles to escape the room. However, use your wizzardy powers to defeat the Harry Potter games', instagram: '', price: '££', age: 0, photo: 'https://enigmaquests.london/Content/DynamicMedia/Rooms/ListPage/1003_Image.jpg', date: '')
the_kareoke_hole = Activity.create!(category: adventure, title: 'The Kareoke Hole', location: '95 Kingsland High St, London E8 2PB', phone: '020 7254 8860', hours: '', description: 'A kareoke bar hosted by drag queens', instagram: 'thekareokehole', price: '££', age: 0, photo: 'https://media.timeout.com/images/105228746/630/472/image.jpg', date: '')
teamsport_karting = Activity.create!(category: adventure, title: 'TeamSport Karting', location: 'Tower Bridge Business Park, 100 Clements Rd, London SE16 4DG', phone: '0844 998 0000', hours: '', description: 'State-of-the-art karting track with flyover and electronic timing.', instagram: 'teamsportkarting', price: '££', age: 0, photo: 'https://www.team-sport.co.uk/media/2315/web_header_1920x1090_go-karting-1.jpg', date: '')
the_crystal_maze = Activity.create!(category: adventure, title: 'The Crystal Maze', location: '10-14 White Lion St, London N1 9PD', phone: '0161 791 0727', hours: '', description: 'The ultimate team challenge, in which you and your friends face challenges testing your skill, mental and physical ability across four adventure time zones.', instagram: 'thecrystalmaze', price: '£', age: 0, photo: 'https://www.thebottleyard.com/wp-content/uploads/2018/04/Richard-Ayoade-presents-The-Crystal-Maze-image-c-Channel-4.jpg', date: '')
the_arch_climbing_wall = Activity.create!(category: adventure, title: 'The Arch Climbing Wall', location: 'The Biscuit Factory, 100 Clements Rd, London SE16 4DG', phone: '020 7252 1033', hours: '', description: 'Bouldering inside formers Damien Hirst Gallery', instagram: 'archclimbing', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/5b6d8215b1059890c89e29bb/5b71447dcd83663481d1334e/5b71447d0ebbe8405ce9cf5a/1534149762292/026_arch_promo_pano1_RT1.jpg?format=2500w', date: '')




# chill shoreditch
rich_mix = Activity.create!(category: chill, title: 'Rich Mix', location: '35-47 Bethnal Green Rd, London E1 6LA', phone: '020 7613 7498', hours: '', description: 'A melting pot of art and creativity. Combination of the theater, arts, music, and culture', instagram: 'richmixlondon', price: '£', age: 0, photo: 'https://static.designmynight.com/uploads/2014/06/Screen-1-optimised.jpg', date: '')
electric_cinema = Activity.create!(category: chill, title: 'Electric Cinema', location: '3Aubin & Wills Store, 64-66 Redchurch St, London E2 7DP', phone: '020 3350 3490', hours: '', description: 'Luxury single screen cinema, with a full bar and velvet seats. We would say its quiet romantic', instagram: 'electriccinemashoreditch', price: '££', age: 0, photo: 'https://www.electriccinema.co.uk/wp-content/uploads/2018/07/electric-shoreditch-interior.jpg', date: '')
columbia_road_flower_market = Activity.create!(category: chill, title: 'Columbia Road Flower Market', location: 'Columbia Rd, London E2 7RG', phone: '', hours: '', description: 'Opened every sunday, this Flower Market is the perfect place to fill your house with beautiful and not too expensive flowers', instagram: '', price: 'Free', age: 0, photo: 'https://cdn.londonandpartners.com/asset/8f85fee3fb4f2f8fe5344884fe9305ee.jpg', date: '')
turning_earth_ceramics_studio = Activity.create!(category: chill, title: 'Turning Earth Ceramics Studio Hoxton', location: 'Railway Arches, 361-362 Whiston Rd, London E2 8BW', phone: '020 7729 4819', hours: '', description: 'Turning Earth is a community ceramics studio that offers memberships and free workshops', instagram: 'turning.earth', price: '£', age: 0, photo: 'https://static1.squarespace.com/static/55c9e277e4b0e3531a25d061/t/5a3a5d9e0d9297e83b90dce0/1513774575724/Turning+Earth+Hoxton?format=1000w', date: '')
myo_borough = Activity.create!(category: chill, title: 'M.Y.O Borough', location: '82 Redcross Way, London SE1 1HA', phone: '07780 661787', hours: '', description: 'Get your creative juices flowing, build or make crafts while BYOB ', instagram: 'myolondon', price: '£', age: 0, photo: 'https://res.cloudinary.com/hrscywv4p/image/upload/c_limit,fl_lossy,h_9000,w_1920,f_auto,q_auto/v1/1143869/IMG_20180731_100136375_LL_2_uwm0nn.jpg', date: '')
rough_trade_east = Activity.create!(category: chill, title: 'Rough Trade East', location: 'Old Truman Brewery 91, Brick Ln, London E1 6QL', phone: '020 7392 7788', hours: '', description: 'One of a kind records & cds store that showcases a live mic & gigs', instagram: 'roughtradeeast', price: '£', age: 0, photo: 'https://www.roughtrade.com/assets/stores/rough-trade-east-2-e7a6d4a5d86e348cec661e5f8812eeb9668e4e6b81d9daa608f177dab016548b.jpg', date: '')



puts 'activities created!'


#activities tags
# -------------------------------------------------------------------------------------
puts 'Creating tags...'

# number of people
alone = Tag.create!(name: 'alone')
couple = Tag.create!(name: 'couple')
small_group = Tag.create!(name: 'small group')
large_group = Tag.create!(name: 'large group')

#who are you with?
parents = Tag.create!(name: 'parents')
friends = Tag.create!(name: 'friends')
mistress = Tag.create!(name: 'mistress')
partner = Tag.create!(name: 'partner')
co_worker = Tag.create!(name: 'co worker')
someone_from_out_of_town = Tag.create!(name: 'someone from out of town')
grandparents = Tag.create!(name: 'grandparents')
the_boys = Tag.create!(name: 'the boys')
the_girls = Tag.create!(name: 'the girls')
boss = Tag.create!(name: 'boss')
family = Tag.create!(name: 'family')


#locations in london
covent_garden = Tag.create!(name: 'covent garden')
soho = Tag.create!(name: 'soho')
west_end = Tag.create!(name: 'west end')
southbank = Tag.create!(name: 'southbank')
city_of_london = Tag.create!(name: 'city of london')
chinatown = Tag.create!(name: 'chinatown')
camden_town = Tag.create!(name: 'camden town')
islington = Tag.create!(name: 'islington')
hamstead = Tag.create!(name: 'hamstead')
notting_hill = Tag.create!(name: 'notting hill')
south_kensington = Tag.create!(name: 'south kensington')
shoreditch = Tag.create!(name: 'shoreditch')
peckham = Tag.create!(name: 'peckham')
brixton = Tag.create!(name: 'brixton')

#vibe
romantic = Tag.create!(name: 'romantic')
sexy = Tag.create!(name: 'sexy')
chill = Tag.create!(name: 'chill')
quiet = Tag.create!(name: 'quiet')
swanky = Tag.create!(name: 'swanky')
loud = Tag.create!(name: 'loud')
swanky = Tag.create!(name: 'swanky')
trendy = Tag.create!(name: 'trendy')
posh = Tag.create!(name: 'posh')
discreet = Tag.create!(name: 'discreet')
with_a_view = Tag.create!(name: 'with a view')

#and (i want to ...)
dance = Tag.create!(name: 'dance')
live_music = Tag.create!(name: 'live music')
celebrate = Tag.create!(name: 'celebrate')
best_deals = Tag.create!(name: 'best deals')
talk_business = Tag.create!(name: 'talk business')
im_game_for_anything = Tag.create!(name: 'im game for anything')
treat_myself = Tag.create!(name: 'treat myself')
pop_up = Tag.create!(name: 'pop up')


#food special filters
coffee = Tag.create!(name: 'coffee')
snacks = Tag.create!(name: 'snacks')
brunch = Tag.create!(name: 'brunch')
lunch = Tag.create!(name: 'lunch')
dinner = Tag.create!(name: 'dinner')
late_night = Tag.create!(name: 'late night')
sweets = Tag.create!(name: 'sweets')
vegetarian = Tag.create!(name: 'vegetarian')
vegan = Tag.create!(name: 'vegan')
pizza = Tag.create!(name: 'pizza')
sushi = Tag.create!(name: 'sushi')
steak = Tag.create!(name: 'steak')
healthy = Tag.create!(name: 'healthy')
street_food = Tag.create!(name: 'street food')

#drinks special filters
speakeasy = Tag.create!(name: 'speakeasy')
martinis = Tag.create!(name: 'martinis')
hotel_bar = Tag.create!(name: 'hotel_bar')
bougie_cocktails = Tag.create!(name: 'bougie cocktails')
rave = Tag.create!(name: 'rave')
see_a_performance = Tag.create!(name: 'see a performance')
pub = Tag.create!(name: 'pub')

#adventure special filters
get_dirty = Tag.create!(name: 'get dirty')
break_a_sweat = Tag.create!(name: 'break_a_sweat')
gallery = Tag.create!(name: 'gallery')
market = Tag.create!(name: 'market')
cultural_trip = Tag.create!(name: 'cultural_trip')
fast_and_furious = Tag.create!(name: 'fast_and_furious')
problem_solve = Tag.create!(name: 'problem solve')



#chill special filters
detox = Tag.create!(name: 'detox')
indoors = Tag.create!(name: 'indoors')
outdoors = Tag.create!(name: 'outdoors')


puts 'Tags created!'


#adding tags to activities
# -------------------------------------------------------------------------------------
puts 'Adding tags to activities...'

#tags for shoreditch food
#-------------------------------------------------------------------------------------
visionscanteen_tags = [alone, small_group, friends, shoreditch, chill, trendy, healthy, brunch, coffee, snacks]
visionscanteen_tags.each do |tag|
  ActivityTag.create(activity: visions_canteen, tag: tag)
end

onthebab_tags = [small_group, friends, shoreditch, chill, trendy, discreet, lunch, snacks]
onthebab_tags.each do |tag|
  ActivityTag.create(activity: on_the_bab, tag: tag)
end

leroy_tags = [small_group, parents, grandparents, partner, boss, shoreditch, quiet, posh, talk_business, dinner]
leroy_tags.each do |tag|
  ActivityTag.create(activity: leroy, tag: tag)
end

dishoom_tags = [large_group, couple, parents, friends, co_worker, someone_from_out_of_town, partner, shoreditch, romantic, loud, trendy, celebrate, im_game_for_anything, dinner, lunch, vegetarian]
dishoom_tags.each do |tag|
  ActivityTag.create(activity: dishoom, tag: tag)
end

nobu_shoreditch_tags = [couple, large_group, parents, friends, the_girls, mistress, partner, boss, shoreditch, romantic, loud, swanky, posh, treat_myself, dinner, celebrate, sushi]
nobu_shoreditch_tags.each do |tag|
  ActivityTag.create(activity: nobu_shoreditch, tag: tag)
end

homeslice_pizza_tags = [alone, small_group, large_group, friends, co_worker, the_boys, shoreditch, chill, trendy, loud, celebrate, pizza, lunch, dinner, snacks]
homeslice_pizza_tags.each do |tag|
  ActivityTag.create(activity: homeslice_pizza, tag: tag)
end

shoreditch_house_tags = [alone, small_group, grandparents, parents, couple, large_group, someone_from_out_of_town, friends, mistress, boss, shoreditch, loud, romantic, trendy, with_a_view, talk_business, dance, celebrate, lunch, brunch, dinner, pizza, healthy, vegetarian]
shoreditch_house_tags.each do |tag|
  ActivityTag.create(activity: shoreditch_house, tag: tag)
end

bun_bun_bun_tags = [small_group, couple, friends, co_worker, the_girls, shoreditch, chill, discreet, lunch, snacks, dinner, street_food]
bun_bun_bun_tags.each do |tag|
  ActivityTag.create(activity: bun_bun_bun, tag: tag)
end

dinerma_tags = [small_group, large_group, friends, co_worker, someone_from_out_of_town, the_girls, the_boys, shoreditch, loud, trendy, celebrate, im_game_for_anything, dance, snacks, street_food]
dinerma_tags.each do |tag|
  ActivityTag.create(activity: dinerama, tag: tag)
end

dumplingshack_tags = [alone, small_group, large_group, friends, co_worker, the_girls, the_boys, shoreditch, loud, trendy, im_game_for_anything, snacks, street_food, lunch]
dumplingshack_tags.each do |tag|
  ActivityTag.create(activity: dumpling_shack, tag: tag)
end

abondance_tags = [small_group, couple, friends, partner, the_girls, shoreditch, discreet, romantic, quiet, snacks, dinner]
abondance_tags.each do |tag|
  ActivityTag.create(activity: abondance, tag: tag)
end

boundary_rooftop_tags = [small_group, couple, friends, partner, the_girls, shoreditch, loud, swanky, romantic, with_a_view, celebrate, dinner]
boundary_rooftop_tags.each do |tag|
  ActivityTag.create(activity: boundary_rooftop, tag: tag)
end

brilliant_corners_tags = [small_group, couple, partner, boss, shoreditch, quiet, trendy, romantic, chill, talk_business, celebrate, dinner]
brilliant_corners_tags.each do |tag|
  ActivityTag.create(activity: brilliant_corners, tag: tag)
end

bach_tags = [alone, small_group, friends, grandparents, co_worker, shoreditch, chill, talk_business, coffee, snacks, healthy, vegetarian, lunch, vegan]
bach_tags.each do |tag|
  ActivityTag.create(activity: bach, tag: tag)
end

#tags for shoreditch drink
#-------------------------------------------------------------------------------------
shoreditch_house_drinks_tags = [alone, small_group, large_group, friends, someone_from_out_of_town,  co_worker, shoreditch, chill, talk_business, loud, romantic, bougie_cocktails]
shoreditch_house_drinks_tags.each do |tag|
  ActivityTag.create(activity: shoreditch_house_drinks, tag: tag)
end

dinerma_drinks_tags = [small_group, large_group, friends, co_worker, someone_from_out_of_town, the_girls, the_boys, shoreditch, loud, trendy, celebrate, im_game_for_anything, dance, snacks, street_food]
dinerma_drinks_tags.each do |tag|
  ActivityTag.create(activity: dinerama_drinks, tag: tag)
end


happiness_forgets_tags = [couple, partner, parents, friends, mistress, shoreditch, romantic, sexy, chill, quiet, discreet, speakeasy, martinis]
happiness_forgets_tags.each do |tag|
  ActivityTag.create(activity: happiness_forgets, tag: tag)
end

troy_bar_tags = [small_group, large_group, friends, co_worker, shoreditch, the_boys, chill, live_music, dance, best_deals, im_game_for_anything, speakeasy]
troy_bar_tags.each do |tag|
  ActivityTag.create(activity: troy_bar, tag: tag)
end

the_owl_and_pussycat_tags = [small_group, parents, grandparents, shoreditch, large_group, friends, co_worker, the_boys, loud, pub, im_game_for_anything]
the_owl_and_pussycat_tags.each do |tag|
  ActivityTag.create(activity: the_owl_and_pussycat, tag: tag)
end

bar_three_tags = [small_group, couple, parents, partner, friends, boss, shoreditch, the_boys, the_girls, romantic, quiet, swanky, im_game_for_anything, bougie_cocktails]
bar_three_tags.each do |tag|
  ActivityTag.create(activity: bar_three, tag: tag)
end

brewhouse_and_kitchen_tags = [large_group, alone, friends, co_worker, the_boys, quiet, shoreditch, chill, best_deals, im_game_for_anything, snacks, pub]
brewhouse_and_kitchen_tags.each do |tag|
  ActivityTag.create(activity: brewhouse_and_kitchen, tag: tag)
end

la_cabina_tags = [small_group, couple, friends, partner, the_boys, chill, speakeasy, shoreditch, im_game_for_anything]
la_cabina_tags.each do |tag|
  ActivityTag.create(activity: la_cabina, tag: tag)
end

brilliant_corners_drinks_tags = [small_group, couple, friends, partner, the_girls, shoreditch, boss, chill, speakeasy, im_game_for_anything, live_music, bougie_cocktails]
brilliant_corners_drinks_tags.each do |tag|
  ActivityTag.create(activity: brilliant_corners_drinks, tag: tag)
end

the_espresso_martini_society_tags = [couple, partner, chill, pop_up, im_game_for_anything, shoreditch, bougie_cocktails]
the_espresso_martini_society_tags.each do |tag|
  ActivityTag.create(activity: the_espresso_martini_society, tag: tag)
end

#tags for shoreditch adventure
#-------------------------------------------------------------------------------------
spitalfields_market_tags = [alone, small_group, large_group, friends, co_worker, parents, shoreditch, loud, trendy, chill, someone_from_out_of_town, street_food, cultural_trip, market]
spitalfields_market_tags.each do |tag|
  ActivityTag.create(activity: spitalfields_market, tag: tag)
end

sculpture_in_the_city_tags = [alone, small_group, couple, friends, parents, grandparents, chill, quiet, trendy, shoreditch, someone_from_out_of_town, cultural_trip, gallery]
sculpture_in_the_city_tags.each do |tag|
  ActivityTag.create(activity: sculpture_in_the_city, tag: tag)
end

yayoi_kusuma_gallery_tags = [alone, couple, friends, parents, grandparents, shoreditch, someone_from_out_of_town, cultural_trip, gallery, trendy, chill, swanky]
yayoi_kusuma_gallery_tags.each do |tag|
  ActivityTag.create(activity: yayoi_kusuma_gallery, tag: tag)
end

enigma_quest_tags = [small_group, large_group, friends, co_worker, shoreditch, someone_from_out_of_town, problem_solve, loud, chill]
enigma_quest_tags.each do |tag|
  ActivityTag.create(activity: enigma_quest, tag: tag)
end

the_kareoke_hole_tags = [small_group, large_group, friends, co_worker, shoreditch, someone_from_out_of_town, trendy, loud, chill]
the_kareoke_hole_tags.each do |tag|
  ActivityTag.create(activity: the_kareoke_hole, tag: tag)
end

teamsport_karting_tags = [small_group, large_group, friends, co_worker, the_boys, shoreditch, trendy, loud, chill, fast_and_furious, break_a_sweat]
teamsport_karting_tags.each do |tag|
  ActivityTag.create(activity: teamsport_karting, tag: tag)
end

the_crystal_maze_tags = [large_group, friends, co_worker, shoreditch, trendy, loud, fast_and_furious, cultural_trip, someone_from_out_of_town]
the_crystal_maze_tags.each do |tag|
  ActivityTag.create(activity: the_crystal_maze, tag: tag)
end

the_arch_climbing_wall_tags = [large_group, small_group, alone, friends, co_worker, shoreditch, loud, fast_and_furious, cultural_trip, someone_from_out_of_town, break_a_sweat]
the_arch_climbing_wall_tags.each do |tag|
  ActivityTag.create(activity: the_arch_climbing_wall, tag: tag)
end

#tags for shoreditch chill
#-------------------------------------------------------------------------------------
rich_mix_tags = [alone, couple, small_group, friends, partner, parents, grandparents, family, shoreditch, quiet, chill, cultural_trip, someone_from_out_of_town, indoors]
rich_mix_tags.each do |tag|
  ActivityTag.create(activity: rich_mix, tag: tag)
end

electric_cinema_tags = [alone, couple, friends, partner, parents, grandparents, mistress, family, shoreditch, romantic, sexy, quiet, chill, cultural_trip, indoors]
electric_cinema_tags.each do |tag|
  ActivityTag.create(activity: electric_cinema, tag: tag)
end

columbia_road_flower_market_tags = [alone, couple, friends, partner, parents, grandparents, family, shoreditch, quiet, chill, cultural_trip, outdoors, someone_from_out_of_town]
columbia_road_flower_market_tags.each do |tag|
  ActivityTag.create(activity: columbia_road_flower_market, tag: tag)
end

turning_earth_ceramics_studio_tags = [alone, couple, small_group, friends, partner, parents, grandparents, family, shoreditch, chill, cultural_trip, indoors]
turning_earth_ceramics_studio_tags.each do |tag|
  ActivityTag.create(activity: turning_earth_ceramics_studio, tag: tag)
end

myo_borough_tags = [couple, small_group, large_group, friends, partner, co_worker, family, shoreditch, loud, chill, indoors]
myo_borough_tags.each do |tag|
  ActivityTag.create(activity: myo_borough, tag: tag)
end

rough_trade_east_tags = [couple, small_group, large_group, friends, partner, co_worker, shoreditch, loud, chill, indoors, outdoors, live_music, dance]
rough_trade_east_tags.each do |tag|
  ActivityTag.create(activity: rough_trade_east, tag: tag)
end

puts 'Tags added!'
