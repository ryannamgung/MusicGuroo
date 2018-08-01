class AddColumnsToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :username, :string
    add_column :teachers, :password_digest, :string
  end
end
