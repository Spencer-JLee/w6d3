class ChangeFavoritedDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :artworks, :owner_favorited, :boolean, default: true
  end
end
