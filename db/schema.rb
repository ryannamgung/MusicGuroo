ActiveRecord::Schema.define(version: 2018_07_30_184019) do

  create_table "bookings", force: :cascade do |t|
    t.integer "lesson_id"
    t.integer "student_id"
    t.datetime "time"
    t.datetime "day"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_bookings_on_lesson_id"
    t.index ["student_id"], name: "index_bookings_on_student_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "instrument_id"
    t.string "difficulty"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_lessons_on_instrument_id"
    t.index ["teacher_id"], name: "index_lessons_on_teacher_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "review"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "philosophy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
