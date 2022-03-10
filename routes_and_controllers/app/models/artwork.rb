# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
  validates :artist_id, uniqueness: {scope: :title}
  validates :artist_id, :title, :image_url, presence: true

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User

  has_many :artwork_shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare
  
  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer

  def self.owned_and_shared_artworks(user_id)
    Artwork
      .left_joins(:artwork_shares)
      .where('(artist_id = :user_id) OR (artwork_shares.viewer_id = :user_id)', user_id: user_id )
      .distinct
  end

  def self.favorited_artworks(user_id)
    Artwork
      .left_joins(:artwork_shares)
      .where('(artist_id = :user_id) OR (artwork_shares.viewer_id = :user_id AND artwork_shares.favorited = true)', user_id: user_id )
      .distinct
  end

  has_many :artwork_collections,
    foreign_key: :artwork_id,
    class_name: :ArtworkCollection,
    dependent: :destroy

  has_many :comments,
    foreign_key: :artwork_id,
    class_name: :Comment,
    dependent: :destroy

  has_many :likes, as: :likeable
end
