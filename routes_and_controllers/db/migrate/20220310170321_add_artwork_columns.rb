class AddArtworkColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :owner_favorited, :boolean, default: false

    add_column :artwork_shares, :favorited, :boolean, default: false
  end

end
