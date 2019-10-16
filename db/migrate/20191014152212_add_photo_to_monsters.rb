class AddPhotoToMonsters < ActiveRecord::Migration[5.2]
  def change
    add_column :monsters, :photo, :string
  end
end
