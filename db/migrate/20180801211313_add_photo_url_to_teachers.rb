class AddPhotoUrlToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :photo_url, :string, default: 'https://viterbi.usc.edu/directory/images/noprofile.png'
  end
end
