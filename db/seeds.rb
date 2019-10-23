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
  password: 'password',
  remote_photo_url: 'https://avatars2.githubusercontent.com/u/6656014?v=4'
)

printLine

puts 'Creating monsters'

monster1 = Monster.create(
  address: "Helsinki",
  price: 77,
  description: 'The Chimera is a ferocious, fire breathing monstrosity that possessed the body and head of a lion with the head of a goat protruding from it’s back and a snake for a tail... Skills: Ice water, Laser arch, fire ball, ',
  name: 'Meduphon',
  user: nico,
  remote_photo_url: 'https://cdn2us.denofgeek.com/sites/denofgeekus/files/styles/main_wide/public/2016/05/creature_from_the_black_lagoon_franchise_retrospective.jpg?itok=oow2GS2l'
)
monster2 = Monster.create(
  address: 'Lisbon',
  price: 99,
  description: 'The monster is feared and believed to have been an omen for storms, shipwrecks and other natural disasters... Skills: Laser eyes, Super punch, Immortality',
  name: 'Typhon',
  user: nico,
  remote_photo_url: 'https://images.unsplash.com/photo-1509248961158-e54f6934749c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1922&q=80'
)
monster3 = Monster.create(
  address: 'Moscow',
  price: 130,
  description: 'The monster is perhaps little known and does not appear in any traditional epic or popular legend. However her frightening appearance, and her ghastly tendency to feast on human blood and flesh, more than warrants her place as number seven on our list...  Skills: Fire breath, killer jump, Flying',
  name: 'Medusa',
  user: nico,
  remote_photo_url: 'https://vignette.wikia.nocookie.net/movie-monster/images/e/e3/GiantBehemoth.png/revision/latest?cb=20180606174201'
)
monster4 = Monster.create(
  address: 'Warsaw',
  price: 120,
  description: 'This monster has the confounding ability to regrow any decapitated limbs with alarming speed... Skills: Assault Ribbon, Laser blade',
  name: 'The Minotaur',
  user: nico,
  remote_photo_url: 'https://www.irishexaminer.com/remote/media.central.ie/media/images/a/AMonsterCallsScreenshot_large.jpg')
monster5 = Monster.create(
  address: 'Berlin',
  price: 110,
  description: 'Cerberus originally attacks with either a sickle, a sword, or his trademark club... Skills: Leaping Spider, flicker strike',
  name: 'Cerberus',
  user: nico,
  remote_photo_url: 'https://images.unsplash.com/photo-1509248961158-e54f6934749c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1922&q=80')
monster6 = Monster.create(
  address: 'Oslo',
  price: 160,
  description: 'It is said that the beast only had an appetite for living flesh and so would only allow the deceased spirits to pass, while consuming any living mortal who is foolish enough to come near him... Skills: Raise Zombie, Bone Cruncher, Immortality',
  name: 'Charybdis',
  user: nico,
  remote_photo_url: 'https://media.npr.org/assets/img/2012/10/10/1750_bw_00011ad_wide-c577aaf6b246d5688d05ff05c81e2c157c568290-s800-c85.jpg')
monster7 = Monster.create(
  address: 'Stockholm',
  price: 88,
  description: 'This monster is best remembered for his affinity for devouring flesh and his cryptic home, deep within the confines of the twisted labyrinth... Skills: Fireball, Lightning Warp, Immortality',
  name: 'Hydra',
  user: sy,
  remote_photo_url: 'http://cdn.collider.com/wp-content/uploads/2017/06/godzilla-1954.jpg')
monster8 = Monster.create(
  address: 'Lyon',
  price: 160,
  description: 'The supernatural forces that sustain this vampire beyond mortal death also endow them with immortality, heightened senses, and enhanced superhuman physical abilities as well as powers of mind control and mental abilities which make them physically superior to humans... Skills: Arctic breath, Cold Snap',
  name: 'Empusa',
  user: sy,
  remote_photo_url: 'https://i1.wp.com/faroutmagazine.co.uk/wp-content/uploads/2019/07/Godzilla-1954.jpeg?w=1200&ssl=1')
monster9 = Monster.create(
  address: 'Rome',
  price: 125,
  description: 'This monster has the ability to adapt to sunlight and the power to render themselves invisible provided they are powerful enough... Skills: Burning Arrow, Cold Snap Immortality' ,
  name: 'Chimera',
  user: sy,
  remote_photo_url: 'https://i0.wp.com/bloody-disgusting.com/wp-content/uploads/2019/02/dream.jpg?ssl=1')
monster10 = Monster.create(
  address: 'Paris',
  price: 170,
  description: 'This is a monster that is dangerous because it can mimic a humans voice. It can use the voices of loved ones to lure victims into traps that it has set up... Skills: Lightning Arrow, Immortality',
  name: 'Cyclops',
  user: sy,
  remote_photo_url: 'http://getwallpapers.com/wallpaper/full/b/6/a/500920.jpg')
monster11 = Monster.create(
  address: 'Valencia',
  price: 190,
  description: 'This monster her ghastly tendency to feast on human blood and flesh, more than warrants her place as number seven on our list... Skills: Explosive Arrow, Ice Shot',
  name: 'Sphinx',
  user: sy,
  remote_photo_url: 'https://gallery.mailchimp.com/e0f5618a41f76b17c22005aec/images/cy.gif')
monster12 = Monster.create(
  address: 'Istanbul',
  price: 188,
  description: 'This monster is so feaurious and has the ability to grow stronger with time, age, and the consumption of human blood... Skills: Immortality, golden horn, super punch',
  name: 'Cycsphira',
  user: sy,
  remote_photo_url: 'https://images.unsplash.com/photo-1509248961158-e54f6934749c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1922&q=80')

printLine

puts 'Creating Reservations'

start_time = Time.now
end_time = Time.now + (rand 2..7 * seconds_in_a_day)

Reservation.create(
  status: 'pending',
  monster: monster1,
  user: sy,
  start_date: start_time, end_date: end_time,
  total_price: ((end_time - start_time) / seconds_in_a_day) * monster1.price
)
Reservation.create(
  status: 'confirmed',
  monster: monster2,
  user: sy,
  start_date: start_time, end_date: end_time,
  total_price: ((end_time - start_time) / seconds_in_a_day) * monster2.price
)
Reservation.create(
  status: 'denied',
  monster: monster3,
  user: sy,
  start_date: start_time, end_date: end_time,
  total_price: ((end_time - start_time) / seconds_in_a_day) * monster3.price
)

printLine

puts 'Creating Reviews'

Monster.all.each do |monster|
  4.times do
    Review.create(
      user: User.all.sample,
      monster: monster,
      integer: [1, 2, 3, 4, 5].sample,
      text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      reservation_id: Reservation.all.sample.id
    )
  end
end

puts 'Seeding Process Complete'
puts 'Have fun with your monsters!'
