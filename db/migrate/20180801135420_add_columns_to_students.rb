class AddColumnsToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :username, :string
    add_column :students, :password_digest, :string
  end
end
