class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.references :teacher, foreign_key: true
      t.references :instrument, foreign_key: true
      t.string :difficulty
      t.string :genre

      t.timestamps
    end
  end
end
