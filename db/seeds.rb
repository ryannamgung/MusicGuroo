# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Teacher.create([{username: 't1', password: '12345', name: "Jon", bio: "Born.", philosophy: "I believe in nothing but eating."},
                {username: 't2', password: '12345', name: "Ryan", bio: "Born and raised.", philosophy: "I think of the world as as flat."},
                {username: 't3', password: '12345', name: "Daniel", bio: "never lived up to his potential.", philosophy: "I never let my student work."},
                {username: 't4', password: '12345', name: "Jimmy", bio: "Overachiever in the field of hot-dog hugging.", philosophy: "A spank here, a spank there never is the best didactic attitude."},
                {username: 't5', password: '12345', name: "Sammy", bio: "Ice cream aficionado.", philosophy: "I teach only ancient music and nothing else."}])

Student.create([{name: "Josephine", username: 's1', password: '12345'},
                {name: "Geraldine", username: 's2', password: '12345'},
                {name: "Brandon", username: 's3', password: '12345'},
                {name: "Santos", username: 's4', password: '12345'},
                {name: "Micah", username: 's5', password: '12345'}] )

Instrument.create([{name: "Guitar", image_url: "https://www.martinguitar.com/media/8543/d-21_f_1195x3000.jpg"},
                  {name: "Piano", image_url: "https://a.1stdibscdn.com/archivesE/upload/1722654/f_63303131483737802632/piano_org_z.jpg"},
                  {name: "Violin", image_url: "https://media.guitarcenter.com/is/image/MMGS7/My-Violin-Starter-Pack-1-4-Size/H73551000001000-00-500x500.jpg"},
                  {name: "Cello", image_url: "http://kindersay.com/files/images/cello.png"},
                  {name: "Saxophone", image_url: "https://media.wwbw.com/is/image/MMGS7/BTS-300-Tenor-Saxophone-Outfit-Lacquer/463682000420000-00-500x500.jpg"},
                  {name: "Flute", image_url: "https://www.woodbrass.com/images/SQUARE400/woodbrass/PFA+206.JPG"},
                  {name: "Drums", image_url: "http://www.tama.com/STAR/images/gallery/L/TB_SKB.jpg"},
                  {name: "Viola Da Gamba", image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/503219/1384277/main-image"},
                  {name: "Qanun", image_url: "http://i.ebayimg.com/00/s/NTAwWDUwMA==/z/lwIAAOxycmBS-ryB/$_3.JPG?set_id=2"},
                  {name: "Santour", image_url: "https://images-na.ssl-images-amazon.com/images/I/91DScN9%2BRtL._SL1500_.jpg"}])

Lesson.create([
  {teacher: Teacher.first, difficulty: "beginner", instrument: Instrument.first, genre: "classic"},
  {teacher: Teacher.second, difficulty: "intermediate", instrument: Instrument.all.sample, genre: "pop"},
  {teacher: Teacher.third, difficulty: "beginner", instrument: Instrument.all.sample, genre: "jazz"},
  {teacher: Teacher.last, difficulty: "intermediate", instrument: Instrument.all.sample, genre: "classic"},
  {teacher: Teacher.second, difficulty: "master", instrument: Instrument.all.sample, genre: "bluegrass"},
  {teacher: Teacher.last, difficulty: "advanced", instrument: Instrument.all.sample, genre: "classic"},
  {teacher: Teacher.fourth, difficulty: "beginner", instrument: Instrument.all.sample, genre: "rock"}
  ])
