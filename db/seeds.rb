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
shoreditch_house = Activity.create!(category: food, title: 'Shoreditch House', location: '1 Ebor St, London E1 6AW', phone: '020 7739 5040', hours: '', description: 'Members only club with a great rooftoop pool and several restaurants for the many types of foodies', instagram: 'shoreditchhouse', price: '££', age: 0, photo: 'https://www.google.co.uk/maps/uv?hl=en&pb=!1s0x48761cb73105e19f%3A0x603c5566784ab422!2m22!2m2!1i80!2i80!3m1!2i20!16m16!1b1!2m2!1m1!1e1!2m2!1m1!1e3!2m2!1m1!1e5!2m2!1m1!1e4!2m2!1m1!1e6!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMBC5VaXMfEhPzTVhhpAebZZskV0SrLA9LGBR62%3Dw480-h320-k-no!5sshoreditch%20house%20-%20Google%20Search&imagekey=!1e10!2sAF1QipMmuQkMea1ag7dpf9nDvsWuQsp35nStfwlru8nh&sa=X&ved=2ahUKEwibp6_E_-LeAhURQMAKHXVjD1gQoiowFXoECAQQBg#', date: '')
bun_bun_bun = Activity.create!(category: food, title: 'Bun Bun Bun', location: '134B Kingsland Rd, London E2 8DY', phone: '020 7729 6494', hours: '', description: 'Authentic vietnamese food with simple decor. Also the only place in London to have Bun Cha Hanoi', instagram: 'bunldn', price: '£', age: 0, photo: 'http://www.bunbunbun.co/images/gallery/bunbunbun-07-1464521217.jpg', date: '')
dinerama = Activity.create!(category: food, title: 'Dinerama', location: '19 Great Eastern St, London EC2A 3EJ', phone: '020 3931 1270', hours: '', description: 'Global street food market housing different enviroments', instagram: 'streetfeastldn', price: '£', age: 0, photo: 'https://www.streetfeast.com/wp-content/uploads/2017/01/C44iF5ZVYAEAqxH-1.jpg', date: '')
dumpling_shack = Activity.create!(category: food, title: 'Dumpling Shack', location: '16 Horner Square, London E1 6EW', phone: '', hours: '', description: 'Chinese street food straight from Shanghai with the perfect dumpling', instagram: 'dumplingshack', price: '£', age: 0, photo: 'https://oldspitalfieldsmarket.com/cms/2017/10/Spitalfields-WEB-19.01.18-87.jpg', date: '')
abondance = Activity.create!(category: food, title: 'Abondance', location: '10A Lamb Street, Spitalfields, London E1 6EA', phone: '020 7247 7437', hours: '', description: 'Cheese for days, delicious fondue and raclette', instagram: '', price: '££', age: 0, photo: 'https://oldspitalfieldsmarket.com/cms/2017/09/Androuet-1-720x480.jpg', date: '')
boundary_rooftop = Activity.create!(category: food, title: 'Boundary Rooftop', location: '2-4 Boundary St, London E2 7DD', phone: '020 7729 1051', hours: '', description: 'Because when it is nice outside, why not enjoy a rooftop meal? Mediterranean food & panoramic views of London, whats better?', instagram: 'boundaryldn', price: '£££', age: 0, photo: 'https://www.telegraph.co.uk/content/dam/Travel/hotels/europe/united-kingdom/Hotels%20-%20England/london/boundary-london-rooftop-p.jpg', date: '')
brilliant_corners = Activity.create!(category: drink, title: 'Brilliant Corners', location: '470 Kingsland Rd, London E8 4AE', phone: '020 7812 9511', hours: '', description: 'Low lit cocktail bar & Japanese small plates featuring DJ sessions and live music', instagram: 'brilliant_cnrs', price: '££', age: 0, photo: 'http://brilliantcornerslondon.co.uk/wp-content/uploads/2016/01/moons.jpg', date: '')


#drinks shoreditch
dinerama = Activity.create!(category: drink, title: 'Dinerama', location: '19 Great Eastern St, London EC2A 3EJ', phone: '020 3931 1270', hours: '', description: 'Global street food & drink market housing different enviroments', instagram: 'streetfeastldn', price: '£', age: 0, photo: 'https://www.streetfeast.com/wp-content/uploads/2017/01/C44iF5ZVYAEAqxH-1.jpg', date: '')
shoreditch_house = Activity.create!(category: drink, title: 'Shoreditch House', location: '1 Ebor St, London E1 6AW', phone: '020 7739 5040', hours: '', description: 'Members only club with a great rooftoop pool and signature cocktails', instagram: 'shoreditchhouse', price: '££', age: 0, photo: 'https://www.google.co.uk/maps/uv?hl=en&pb=!1s0x48761cb73105e19f%3A0x603c5566784ab422!2m22!2m2!1i80!2i80!3m1!2i20!16m16!1b1!2m2!1m1!1e1!2m2!1m1!1e3!2m2!1m1!1e5!2m2!1m1!1e4!2m2!1m1!1e6!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMBC5VaXMfEhPzTVhhpAebZZskV0SrLA9LGBR62%3Dw480-h320-k-no!5sshoreditch%20house%20-%20Google%20Search&imagekey=!1e10!2sAF1QipMmuQkMea1ag7dpf9nDvsWuQsp35nStfwlru8nh&sa=X&ved=2ahUKEwibp6_E_-LeAhURQMAKHXVjD1gQoiowFXoECAQQBg#', date: '')
happiness_forgets = Activity.create!(category: drink, title: 'Happiness Forgets', location: '8-9 Hoxton Square, London, N1 6NU', phone: '020 7613 0325', hours: '', description: 'Speakeasy bar in a tiny low-lit basement', instagram: 'happiness_hoxton', price: '££', age: 18, photo: 'https://static.designmynight.com/uploads/2014/04/Happiness-Forgets-optimised.jpg', date: '')
troy_bar = Activity.create!(category: drink, title: 'Troy Bar', location: '10 Hoxton St, London N1 6NG', phone: '020 7739 6695', hours: '', description: 'Community led bar with Caribbean Soul and live music', instagram: 'troybarofficial', price: '£', age: 18, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/07/e4/a8/59/troy-bar.jpg', date: '')
the_owl_and_pussycat = Activity.create!(category: drink, title: 'The Owl and the Pussycat', location: '34 Redchurch St, London E2 7DP', phone: '020 3487 0088', hours: '', description: 'Community led bar with Caribbean Soul and live music', instagram: 'troybarofficial', price: '£', age: 18, photo: 'https://media-cdn.tripadvisor.com/media/photo-s/07/e4/a8/59/troy-bar.jpg', date: '')
bar_three = Activity.create!(category: drink, title: 'Bar Three', location: '65a Brushfield St, London E1 6AA', phone: '020 7101 0093', hours: '', description: 'A dark romantic bar, for the cocktail connoseiur', instagram: 'barthreelondon', price: '££', age: 18, photo: 'https://static.standard.co.uk/s3fs-public/thumbnails/image/2016/06/20/18/hawksmoor-spitalfields.jpg?width=1000&height=614&fit=bounds&format=pjpg&auto=webp&quality=70&crop=16:9,offset-y0.5', date: '')
brewhouse_and_kitchen = Activity.create!(category: drink, title: 'Brewhouse & Kitchen', location: '397-400 Geffrye St, London E2 8HZ', phone: '020 3861 8920', hours: '', description: 'All over london, this place offers great beers with the perfectly pairing of snacks', instagram: 'brewhouse_and_kitchen', price: '£', age: 0, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScqaPubegpnZcwxO2ExLWrtxULr38i9U9msXwZbKmxFIFqn2vonQ', date: '')
la_cabina = Activity.create!(category: drink, title: 'La Cabina', location: '232 Kingsland Rd, Dalston, London E2 8AX', phone: '020 3487 0896', hours: '', description: 'Hidden behind a metal door with a telephone bang, this speakeasy tapas and cocktail bar is bound to be a fun night', instagram: '', price: '£', age: 0, photo: 'https://media.timeout.com/images/103068785/1372/772/image.jpg', date: '')
brilliant_corners = Activity.create!(category: drink, title: 'Brilliant Corners', location: '470 Kingsland Rd, London E8 4AE', phone: '020 7812 9511', hours: '', description: 'Low lit cocktail bar & Japanese small plates featuring DJ sessions and live music', instagram: 'brilliant_cnrs', price: '££', age: 0, photo: 'http://brilliantcornerslondon.co.uk/wp-content/uploads/2016/01/moons.jpg', date: '')
the_espresso_martini_society = Activity.create!(category: drink, title: 'The Espresso Martini SOciety', location: '42 Hanbury St, London E1 5JL', phone: '020 7812 9511', hours: '', description: 'Low lit cocktail bar & Japanese small plates featuring DJ sessions and live music', instagram: 'brilliant_cnrs', price: '££', age: 0, photo: 'http://brilliantcornerslondon.co.uk/wp-content/uploads/2016/01/moons.jpg', date: '')



# adventure shoreditch
spitalfields_market = Activity.create!(category: adventure, title: 'Spitalfields Market', location: '16 Horner Square, London E1 6EW', phone: '', hours: '', description: 'Incredible market home to street food and artists', instagram: 'oldspitalfieldsmarket', price: '£', age: 0, photo: 'https://a1.ah-assets.net/uploads/photo/path/4366/retina_SpitalfieldsMarket-10.jpg', date: '')
sculpture_in_the_city = Activity.create!(category: adventure, title: 'Sculpture In the City', location: 'Bishopgate, London EC2M 3TL', phone: '', hours: '', description: 'Open air sculpture exhibition within the Bishopgate Gardens', instagram: 'sculptureinthecity', price: 'Free', age: 0, photo: 'https://www.sculptureinthecity.org.uk/wp-content/uploads/2018/06/Worldwide-web-of-somewheres-1024x683.jpg', date: '')
yayoi_kusuma_gallery = Activity.create!(category: adventure, title: 'Yayoi Kusama: The Moving Moment When I Went to The Universe', location: '16 Wharf Road, London N1 7RW', phone: '020 7336 8109', hours: '', description: 'Amazing works by Yayoi Kusama, known for polka dots, is back with a room made for Instagram.', instagram: '', price: 'Free', age: 0, photo: 'https://images.graph.cool/v1/cj6c28vh912680101ozc2paxj/cjmq3u9x71t5h0105vga6zrzz/0x0:4000x2670/960x960/kusa1110_infinity_mirrored_room_my_heart_is_dancing_into_the_universe_2018_a_lo.jpg', date: '3 October - 21 December 2018')
enigma_quest = Activity.create!(category: adventure, title: 'Enigma Quests - A Harry Potter Themed Escape Room', location: '2-12 Wilson Street, London EC2M 7LS', phone: '020 7377 9220', hours: '', description: 'Solve clues and riddles to escape the room. However, use your wizzardy powers to defeat the Harry Potter games', instagram: '', price: '££', age: 0, photo: 'https://enigmaquests.london/Content/DynamicMedia/Rooms/ListPage/1003_Image.jpg', date: '')
the_kareoke_hole = Activity.create!(category: adventure, title: 'The Kareoke Hole', location: '95 Kingsland High St, London E8 2PB', phone: '020 7254 8860', hours: '', description: 'A kareoke bar hosted by drag queens', instagram: 'thekareokehole', price: '££', age: 0, photo: 'https://media.timeout.com/images/105228746/630/472/image.jpg', date: '')




# chill shoreditch
rich_mix = Activity.create!(category: chill, title: 'Rich Mix', location: '35-47 Bethnal Green Rd, London E1 6LA', phone: '020 7613 7498', hours: '', description: 'A melting pot of art and creativity. Combination of the theater, arts, music, and culture', instagram: 'richmixlondon', price: '£', age: 0, photo: 'https://static.designmynight.com/uploads/2014/06/Screen-1-optimised.jpg', date: '')
electric_cinema = Activity.create!(category: chill, title: 'Electric Cinema', location: '3Aubin & Wills Store, 64-66 Redchurch St, London E2 7DP', phone: '020 3350 3490', hours: '', description: 'Luxury single screen cinema, with a full bar and velvet seats. We would say its quiet romantic', instagram: 'electriccinemashoreditch', price: '££', age: 0, photo: 'https://www.electriccinema.co.uk/wp-content/uploads/2018/07/electric-shoreditch-interior.jpg', date: '')



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


#chill special filters
detox = Tag.create!(name: 'detox')

puts 'Tags created!'


#adding tags to activities
# -------------------------------------------------------------------------------------
puts 'Adding tags to activities...'

# park_tags = [tag1, tag2, ... , tagn]
# park_tags.each do |tag|
#   ActivityTag.create!(activity: park_activity, tag:tag)
# end

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

dishoom_tags = [large_group, couple, parents, friends, co_worker, partner, shoreditch, romantic, loud, trendy, celebrate, im_game_for_anything, dinner, lunch, vegetarian]
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

shoreditch_house_tags = [alone, small_group, couple, large_group, friends, mistress, boss, shoreditch, loud, romantic, trendy, with_a_view, talk_business, dance, celebrate, lunch, brunch, dinner, pizza, healthy, vegetarian]
shoreditch_house_tags.each do |tag|
  ActivityTag.create(activity: shoreditch_house, tag: tag)
end

bun_bun_bun_tags = [small_group, couple, friends, co_worker, the_girls, shoreditch, chill, discreet, lunch, snacks, dinner, street_food]
bun_bun_bun_tags.each do |tag|
  ActivityTag.create(activity: bun_bun_bun, tag: tag)
end

dinerma_tags = [small_group, large_group, friends, co_worker, the_girls, the_boys, shoreditch, loud, trendy, celebrate, im_game_for_anything, dance, snacks, street_food]
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























puts 'Tags added!'
