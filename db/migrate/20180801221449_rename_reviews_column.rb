class RenameReviewsColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :review, :description
  end
end
