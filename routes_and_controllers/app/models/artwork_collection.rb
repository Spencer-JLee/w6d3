class ArtworkCollection < ApplicationRecord
  belongs_to :owner,
    foreign_key: :owner_id,
    class_name: :User

  belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork
end