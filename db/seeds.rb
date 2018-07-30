# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Teacher.create([{name: "Jon", bio: "Born.", philosophy: "I believe in nothing but eating."},
                {name: "Ryan", bio: "Born and raised.", philosophy: "I think of the world as as flat."},
                {name: "Daniel", bio: "never lived up to his potential.", philosophy: "I never let my student work."},
                {name: "Jimmy", bio: "Overachiever in the field of hot-dog hugging.", philosophy: "A spank here, a spank there never is the best didactic attitude."},
                {name: "Sammy", bio: "Ice cream aficionado.", philosophy: "I teach only ancient music and nothing else."}])

Student.create([{name: "Josephine"},
                {name: "Geraldine"},
                {name: "Brandon"},
                {name: "Santos"},
                {name: "Micah"}] )

Instrument.create([{name: "Guitar"},
                  {name: "Piano"},
                  {name: "Violin"},
                  {name: "Cello"},
                  {name: "Sax"},
                  {name: "Flute"},
                  {name: "Drums"},
                  {name: "Viola Da Gamba"},
                  {name: "Qanun"},
                  {name: "Santour"}])

Lesson.create([
  {teacher: Teacher.first, difficulty: "beginner", instrument: Instrument.first, genre: "classic"},
  {teacher: Teacher.second, difficulty: "intermediate", instrument: Instrument.all.sample, genre: "pop"},
  {teacher: Teacher.third, difficulty: "beginner", instrument: Instrument.all.sample, genre: "jazz"},
  {teacher: Teacher.last, difficulty: "intermediate", instrument: Instrument.all.sample, genre: "classic"},
  {teacher: Teacher.second, difficulty: "master", instrument: Instrument.all.sample, genre: "bluegrass"},
  {teacher: Teacher.last, difficulty: "advanced", instrument: Instrument.all.sample, genre: "classic"},
  {teacher: Teacher.fourth, difficulty: "beginner", instrument: Instrument.all.sample, genre: "rock"}
  ])
