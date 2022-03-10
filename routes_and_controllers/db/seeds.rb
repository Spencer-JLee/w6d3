# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
ArtworkShare.destroy_all
Artwork.destroy_all
User.destroy_all



users = User.create([{ username: "Steve" }, { username: "Joe" }, { username: "XxShadowlordxX" },
{ username: "DemonSniper" }, { username: "VegansVsMeatheads" }])

#  title      :string          
#  image_url  :string        
#  artist_id  :integer 
artworks = Artwork.create([ 
  { title: "Starry Night", image_url:  "flickr.com/1", artist_id: users[0].id}, 
  { title: "Mona Lisa", image_url:  "flickr.com/2", artist_id: users[1].id},
  { title: "Falling Water", image_url:  "flickr.com/3", artist_id: users[2].id},
  { title: "Venus on a Seashell", image_url:  "flickr.com/4", artist_id: users[3].id},
  { title: "Scream", image_url:  "flickr.com/5", artist_id: users[4].id}])

artwork_shares = ArtworkShare.create([
  { artwork_id: artworks[0].id, viewer_id: users[0].id},
  { artwork_id: artworks[0].id, viewer_id: users[1].id},
  { artwork_id: artworks[0].id, viewer_id: users[2].id},
  { artwork_id: artworks[0].id, viewer_id: users[3].id},
  { artwork_id: artworks[0].id, viewer_id: users[4].id},
  { artwork_id: artworks[1].id, viewer_id: users[0].id},
  { artwork_id: artworks[1].id, viewer_id: users[1].id},
  { artwork_id: artworks[1].id, viewer_id: users[2].id},
  { artwork_id: artworks[2].id, viewer_id: users[4].id},
  { artwork_id: artworks[2].id, viewer_id: users[1].id},
  { artwork_id: artworks[2].id, viewer_id: users[3].id},
  { artwork_id: artworks[3].id, viewer_id: users[0].id},
  { artwork_id: artworks[3].id, viewer_id: users[1].id},
  { artwork_id: artworks[3].id, viewer_id: users[2].id},
  { artwork_id: artworks[4].id, viewer_id: users[0].id}
])

comments = Comment.create([
  { body: "This artwork sucks", user_id: users[0].id, artwork_id: artworks[3].id},
  { body: "Go back to school", user_id: users[0].id, artwork_id: artworks[4].id},
  { body: "You called this art?", user_id: users[1].id, artwork_id: artworks[0].id},
  { body: "Great job, I love it", user_id: users[1].id, artwork_id: artworks[2].id},
  { body: "Excellent use of color", user_id: users[2].id, artwork_id: artworks[1].id},
  { body: "Bob Ross would be proud", user_id: users[2].id, artwork_id: artworks[4].id},
  { body: "It's very Baroque", user_id: users[3].id, artwork_id: artworks[1].id},
  { body: "I would like to buy this painting", user_id: users[3].id, artwork_id: artworks[2].id},
  { body: "I agree with the above commenter", user_id: users[4].id, artwork_id: artworks[3].id},
  { body: ":D", user_id: users[4].id, artwork_id: artworks[2].id},
])