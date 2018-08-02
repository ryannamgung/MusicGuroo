class AddImageUrlToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :image_url, :string
  end
end
