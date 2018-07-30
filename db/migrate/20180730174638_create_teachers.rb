class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :bio
      t.string :philosophy

      t.timestamps
    end
  end
end
