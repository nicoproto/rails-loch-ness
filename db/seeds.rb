def printLine
  print '['
  100.times { print '*' }
  puts ']'
end

seconds_in_a_day = (60 * 60 * 24)

puts 'Beginning Seeding Process'

puts 'Deleting All Old Seeds'

Review.destroy_all
Reservation.destroy_all
Conversation.destroy_all
Monster.destroy_all
User.destroy_all

printLine

puts 'Creating New User Seeds'


nico = User.create(
  name: 'nico',
  email: 'nico@gmail.com',
  password: 'password',
  remote_photo_url: 'https://avatars0.githubusercontent.com/u/43278026?v=4'
)

sy = User.create(
  name: 'sy',
  email: 'sy@gmail.com',
  password: 'holla123',
  remote_photo_url: 'https://avatars2.githubusercontent.com/u/6656014?v=4'
)

User.create(
  name: 'clyde',
  email: 'clyde@gmail.com',
  password: 'password',
  remote_photo_url: 'https://vignette.wikia.nocookie.net/pacman/images/f/f2/ClydeNew.png/revision/latest?cb=20160603182600'
)

User.create(
  name: 'pinky',
  email: 'pinky@gmail.com',
  password: 'password',
  remote_photo_url: 'https://vignette.wikia.nocookie.net/pacman/images/1/1f/PinkyNew.png/revision/latest/scale-to-width-down/350?cb=20160603182431'
)

User.create(
  name: 'inky',
  email: 'inky@gmail.com',
  password: 'password',
  remote_photo_url: 'https://vignette.wikia.nocookie.net/pacman/images/f/f1/InkyNew.png/revision/latest/scale-to-width-down/350?cb=20160603182516'
)

User.create(
  name: 'blinky',
  email: 'blinky@gmail.com',
  password: 'password',
  remote_photo_url: 'https://vignette.wikia.nocookie.net/pacman/images/4/4d/BlinkyNew.png/revision/latest/scale-to-width-down/350?cb=20160603182347'
)

printLine

puts 'Creating monsters'

Monster.create(
  address: "Birdwood Ave, South Yarra VIC 3141",
  price: rand(70..200),
  description: 'Toothless is a 21-year old male Night Fury appearing in the How To Train Your Dragon franchise. The last known Night Fury in existence, Toothless is the dragon mount and best friend of Hiccup Horrendous Haddock III and the current king of the dragons in and around the Barbaric Archipelago and on Berk.',
  name: 'Toothless',
  user: sy,
  remote_photo_url: 'https://res.cloudinary.com/syrashid/image/upload/v1572435013/toppng.com-toothless-the-dragon-from-how-to-train-your-dragon-train-your-dragon-toothless-800x435_ka5yv5.png'
)

print '5% > '

Monster.create(
  address: "637 Chapel St, South Yarra VIC 3141",
  price: rand(70..200),
  description: "Mike Wazowski is a proud and confident monster, partly defined by his friendship with James P. Sullivan, whom he works with as his Scaring Assistant, and drives him through an exercise regimen like a strict coach. They're best friends, roommates, incredibly devoted to each other, although Mike seeks to improve their careers, partly because of the hard work and everything they've ever put into their jobs.",
  name: 'Mike',
  user: nico,
  remote_photo_url: 'https://vignette.wikia.nocookie.net/great-characters/images/a/a3/The_camera_loves_sheldon.png/revision/latest?cb=20190121234235'
)

print '10% > '

Monster.create(
  address: "Marathon Way, East Melbourne VIC 3002",
  price: rand(70..200),
  description: "Sulley is a top scarer under his boss Henry J. Waternoose, who is the CEO of Monsters, Inc. Sulley's best friend is Mike Wazowski. His mom is Mrs. Sullivan (who is not seen in the movie, but mentioned by Mike) and his dad is the famous scarer, Bill Sullivan. When he is first seen, Sulley is the top scarer at Monsters, Inc., responsible for generating the majority of scares that provide power for the city of Monstropolis.",
  name: 'Sulley',
  user: sy,
  remote_photo_url: 'https://vignette.wikia.nocookie.net/kingdomhearts/images/9/91/Sulley_KHIII.png/revision/latest?cb=20180701021913'
)

print '15% > '

Monster.create!(
  address: "21 Bond St, Melbourne VIC 3000",
  price: rand(70..200),
  description: "Randall is greedy, ruthless, sneaky, short-tempered, competitive, and overall evil in nature. As well, Randall is something of a selfish jerk who doesn't care about a lot of people. Judging by his intentions to capture children for their screams (and possibly never return them), he is probably willing to severely harm little kids (or worse).",
  name: 'Randall',
  user: nico,
  remote_photo_url: 'https://vignette.wikia.nocookie.net/monstersincmovies/images/8/86/Randall.png/revision/latest?cb=20140729143009'
)

print '20% > '

Monster.create!(
  address: "40 The Avenue, Windsor VIC 3181",
  price: rand(70..200),
  description: "The Light Fury moves as fast as Toothless and shares his ability to blend into the sky — even during daylight hours. With her white coloration, the Light Fury hides seamlessly in clouds, sea fog, and distant horizons. Although skittish and skeptical, the Light Fury also shares Toothless' deep sense of empathy and will always wield her plasma blast to defend any in need.",
  name: 'Light Fury',
  user: sy,
  remote_photo_url: 'https://vignette.wikia.nocookie.net/howtotrainyourdragon/images/a/a6/ROB-LightFury-Transparent.png/revision/latest?cb=20190206044037'
)

print '25% > '

Monster.create(
  address: "359 Little Bourke St, Melbourne VIC 3000",
  price: rand(70..200),
  description: "A gremlin is a folkloric mischievous creature that causes malfunctions in aircraft or other machinery. Depictions of these creatures vary. Often they are described or depicted as animals with spiky backs, large strange eyes, and small clawed frames that feature sharp teeth.",
  name: 'Gremlin',
  user: nico,
  remote_photo_url: 'https://www.sideshow.com/storage/product-images/902055/gizmo_gremlins_silo.png'
)

print '30% > '

Monster.create!(
  address: "60 Jolimont St, East Melbourne VIC 3002",
  price: rand(70..200),
  description: "Dragonite is capable of circling the globe in just 16 hours. It is a kindhearted Pokémon that leads lost and foundering ships in a storm to the safety of land.",
  name: 'Dragonite',
  user: sy,
  remote_photo_url: 'https://vignette.wikia.nocookie.net/vsbattles/images/5/55/149_gr.png/revision/latest?cb=20180527113545'
)

print '35% > '

Monster.create(
  address: "College Cres, Parkville VIC 3052",
  price: rand(70..200),
  description: "Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a Gengar running past you, pretending to be your shadow.",
  name: 'Gengar',
  user: nico,
  remote_photo_url: "http://wiki.shoryuken.com/images/5/55/Pokken_Gengar.png"
)

print '40% > '

Monster.create(
  address: "Port Phillip Bay",
  price: rand(70..200),
  description: "Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.",
  name: 'Blastoise',
  user: sy,
  remote_photo_url: 'http://wiki.shoryuken.com/images/9/90/Pokken_Blastoise.png'
)

print '45% > '

Monster.create(
  address: "Mount Dandenong Victoria 3767",
  price: rand(70..200),
  description: "Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.",
  name: 'Charizard',
  user: nico,
  remote_photo_url: 'https://vignette.wikia.nocookie.net/vsbattles/images/3/35/Charizard_SSBu.png/revision/latest?cb=20180721110519'
)

print '50% > '

Monster.create(
  address: "957 Healesville-Yarra Glen Rd, Yarra Glen VIC 3775",
  price: rand(70..200),
  description: "Bowser is the leader of the turtle-like Koopa race, and has been the archenemy of Mario since his first appearance. His ultimate goals are to kidnap Princess Peach, defeat Mario, and conquer the Mushroom Kingdom. ",
  name: 'Bowser',
  user: nico,
  remote_photo_url: 'https://aff5fa4925746bf9c161-fb36f18ca122a30f6899af8eef8fa39b.ssl.cf5.rackcdn.com/images/Masthead_Bowser.17345b1513ac044897cfc243542899dce541e8dc.9afde10b.png'
)

print '55% > '

Monster.create(
  address: "Queen St, Melbourne VIC 3000",
  price: rand(70..200),
  description: "Koopa Troopas are turtle-like creatures with removable shells that come in many different colors, with red and green Koopa Troopas being the most common; green Koopa Troopas usually walk back and forth without any concerns for pits or other obstacles.",
  name: 'Koopa',
  user: sy,
  remote_photo_url: 'https://www.mariowiki.com/images/thumb/2/2f/Koopa_Troopa_Artwork_-_Super_Mario_3D_World.png/1200px-Koopa_Troopa_Artwork_-_Super_Mario_3D_World.png'
)

print '60% > '

Monster.create(
  address: "11 The Esplanade, St Kilda VIC 3182",
  price: rand(70..200),
  description: "Ewoks are a species of small, mammaloid bipeds that appear in the Star Wars universe. They are hunter-gatherers resembling teddy bears that inhabit the forest moon of Endor and live in various arboreal huts and other simple dwellings. ",
  name: 'Ewok',
  user: nico,
  remote_photo_url: 'https://www.sideshow.com/storage/product-images/904975/wicket_star-wars_silo_sm.png'
)

print '65% > '

Monster.create!(
  address: "Lonsdale St, Melbourne VIC 3000",
  price: rand(70..200),
  description: "Porgs are a curious sea bird species native to the planet Ahch-To. The creatures, who dwell on the cliffs of the island where Skywalker lives in exile, could build nests and fly. Male porgs are known to be slightly bigger in size than females; baby porgs are called porglets. A flock of porgs is known as a murder.",
  name: 'Porg',
  user: sy,
  remote_photo_url: 'https://www.sccpre.cat/mypng/full/4-43404_porgs-were-a-type-of-bird-star-wars.png'
)

print '70% > '

Monster.create(
  address: "119 Rose St, Fitzroy VIC 3065",
  price: rand(70..200),
  description: "Gabumon is a Reptile Digimon. Although it is covered by a fur pelt, it is still clearly a Reptile Digimon. Due to its extremely timid and shy personality, it always gathers up the data which Garurumon leaves behind, and shapes it into a fur pelt to wear.",
  name: 'Gabumon',
  user: nico,
  remote_photo_url: 'https://www.models-resource.com/resources/big_icons/6/5053.png'
)

print '75% > '

Monster.create(
  address: "3 Driver Ln, Melbourne VIC 3000",
  price: rand(70..200),
  description: "Patamon is a Mammal Digimon. It is characterized by its large ears, and is able to fly through the air by using them as large wings, but because it only goes at a speed of 1 kph, it is said that it is definitely faster walking.",
  name: 'Patamon',
  user: sy,
  remote_photo_url: 'https://gallery.withthewill.net/albums/userpics/10002/normal_encountersrender01_patamon.png'
)

print '80% > '

Monster.create(
  address: "1A Sherbrooke Rd, Sherbrooke VIC 3789",
  price: rand(70..200),
  description: "Blue-Eyes White Dragon was the monster ka spirit of Kisara, although it only emerged while she was in an unconscious state.",
  name: 'Blue Eyes White Dragon',
  user: nico,
  remote_photo_url: 'https://i.dlpng.com/static/png/6026803-blue-eyes-white-dragon-png-yugioh-blue-eyes-white-dragon-render-blue-eyes-white-dragon-transparent-886_902_preview.png'
)

print '85% > '

Monster.create(
  address: "157 Lonsdale St, Melbourne VIC 3000",
  price: 240,
  description: "Dark Magician was created when Mahad fused his ba with Illusion Magician, his ka while fighting Thief King Bakura.  The Dark Magician fended off the ghosts and battled Diabound. He then continued to serve the Pharaoh in the form of the Dark Magician.",
  name: 'Dark Magician',
  user: sy,
  remote_photo_url: 'https://img.pngio.com/dark-magician-png-render-by-carlos123321-on-deviantart-dark-magician-png-544_544.png'
)

print '90% > '

print '95% > '

puts '100% !!!'

printLine

puts 'Creating Reservations'

12.times do
  start_time = Time.now + (rand 2..30 * seconds_in_a_day)
  end_time = start_time + (rand 2..14 * seconds_in_a_day)
  monster = Monster.all.sample
  Reservation.create(
    status: %w[pending confirmed denied].sample,
    monster: monster,
    user: User.offset(2).sample,
    start_date: start_time, end_date: end_time,
    total_price: ((end_time - start_time) / seconds_in_a_day) * monster.price
  )
end

old_reservations = []
12.times do
  start_time = Time.now - (rand 15..30 * seconds_in_a_day)
  end_time = start_time + (rand 2..14 * seconds_in_a_day)
  monster = Monster.all.sample
  old_reservations << Reservation.create(
    status: 'confirmed',
    monster: monster,
    user: User.offset(2).sample,
    start_date: start_time, end_date: end_time,
    total_price: ((end_time - start_time) / seconds_in_a_day) * monster.price
  )
end

printLine

puts 'Creating Reviews'

Monster.all.each do |monster|
  rand(2..7).times do
    Review.create(
      user: User.all.sample,
      monster: monster,
      integer: [1, 2, 3, 4, 5].sample,
      text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      reservation_id: old_reservations.sample.id
    )
  end
end

puts 'Seeding Process Complete'
puts 'Have fun with your monsters!'
