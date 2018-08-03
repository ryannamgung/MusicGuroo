# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Teacher.create([{username: 't1', password: '12345', name: "Hadar Noiberg",
  bio: "Hadar Noiberg, flutist, composer and arranger, was born and raised in Israel and is currently living in New York City. She attended the music department of Kiriat Sharet high school in Holon, Israel and is about to earn her Bachelor of Fine Arts degree from the City College of New York. Throughout her years in Israel, Hadar studied flute with Prof. Uri Shoham and Mr. Yossi Arnheim (current principal flutist of the Israeli Philharmonic Orchestra) and composition with Mr. Slava Ganelin. Hadar studied composition and orchestration with Mr. David Del-Tredici and has also been taking private lessons with composers Tamar Muskal and Prof. Adam Silverman.",
  philosophy: "I love teaching flute.",
  photo_url: "http://i2.wp.com/www.radiosefarad.com/wp-content/uploads/2016/03/hadar17.jpg?fit=700%2C466"},
                {username: 't2', password: '12345', name: "Izzy Gliksberg",
                  bio: "Izzy Gliksberg is an international award winning composer, pianist and producer. His work combines traditional film scoring with an electronic edge influenced by contemporary pop, experimental electronica,  hip hop and art rock. Gliksberg composed original scores for shorts, animations and feature documentaries by  ABC, History Channel, director Yulia Ruditskaya, director Johnny Ma  and Bank of America among others.",
                  philosophy: "I think of the world as as flat.",
                  photo_url: "https://static.wixstatic.com/media/4820d1_8e0bef9f53e540468bc6322c5b1d0c40~mv2.jpg/v1/crop/x_120,y_3,w_998,h_725/fill/w_302,h_550,al_c,q_80,usm_0.66_1.00_0.01/4820d1_8e0bef9f53e540468bc6322c5b1d0c40~mv2.webp"},
                {username: 't3', password: '12345', name: "Alon Bisk",
                  bio: "Alon Bisk is a freelance musician working in and around the New York metropolitan area. Alon was an orchestra member for the first national tour of Spring Awakening, Les Miserables (25th Anniversary Tour), American Idiot (First National Tour), The Last Goodbye (Williamstown Theater Festival) and Natasha, Pierre & The Great Comet of 1812 (Off-Broadway). Alon has also worked on NBC's show Smash (Season 2) as well as promotion for HBO's Game of Thrones (Season 3). Most recently he was a sub for Rocky (Broadway) and can currently be seen in the Atlantic Theater Company's production of Found, a new musical. Alon holds a Bachelor of Music degree and a Master of Music in Orchestral Performance degree from the Manhattan School of Music (under the guidance of NY Philharmonic's associate principal cellist, Alan Stepansky). Alon's main objective is to focus on proper technique and musicality.",
                  philosophy: "I love teaching",
                  photo_url: "http://www.greenwichhouse.org/music_school/AlonBisk.jpg"}
                ])

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
  {teacher: Teacher.first, difficulty: "beginner", instrument: Instrument.find(6), genre: "classical", cost: 65},
  {teacher: Teacher.first, difficulty: "intermediate", instrument: Instrument.find(6), genre: "classical", cost: 75},
  {teacher: Teacher.first, difficulty: "advanced", instrument: Instrument.find(6), genre: "classical", cost: 85},
  {teacher: Teacher.first, difficulty: "beginner", instrument: Instrument.find(6), genre: "Jazz", cost: 65},
  {teacher: Teacher.first, difficulty: "intermediate", instrument: Instrument.find(6), genre: "Jazz", cost: 75},
  {teacher: Teacher.first, difficulty: "advanced", instrument: Instrument.find(6), genre: "Jazz", cost: 85},
  {teacher: Teacher.second, difficulty: "beginner", instrument: Instrument.find(2), genre: "classical", cost: 90},
  {teacher: Teacher.second, difficulty: "intermediate", instrument: Instrument.find(2), genre: "pop", cost: 100},
  {teacher: Teacher.second, difficulty: "intermediate", instrument: Instrument.find(1), genre: "rock", cost: 100},
  {teacher: Teacher.third, difficulty: "intermediate", instrument: Instrument.find(3), genre: "classical", cost: 80},
  {teacher: Teacher.third, difficulty: "advanced", instrument: Instrument.find(4), genre: "classical", cost: 80},
  {teacher: Teacher.first, difficulty: "beginner", instrument: Instrument.find(5), genre: "classical", cost: 80},
  {teacher: Teacher.second, difficulty: "intermediate", instrument: Instrument.find(10), genre: "Bluegrass", cost: 80},
  {teacher: Teacher.third, difficulty: "advanced", instrument: Instrument.find(7), genre: "Raggae", cost: 80},
  {teacher: Teacher.first, difficulty: "beginner", instrument: Instrument.find(8), genre: "Ethnic", cost: 80},
  {teacher: Teacher.second, difficulty: "advanced", instrument: Instrument.find(9), genre: "World Music", cost: 80},
  {teacher: Teacher.third, difficulty: "intermediate", instrument: Instrument.all.sample, genre: "Rock", cost: 80},
  {teacher: Teacher.first, difficulty: "beginner", instrument: Instrument.all.sample, genre: "classical", cost: 80},
  {teacher: Teacher.second, difficulty: "advanced", instrument: Instrument.all.sample, genre: "classical", cost: 80}
  ])
