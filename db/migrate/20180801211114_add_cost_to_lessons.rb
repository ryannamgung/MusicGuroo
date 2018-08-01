class AddCostToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :cost, :integer
  end
end
