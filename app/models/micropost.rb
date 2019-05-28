class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true,length: { maximum: 255 }
  

  
  has_many :reverses_of_favorites, class_name: 'Favorite', foreign_key: 'user_id'
  has_many :favorite_to_user, through: :reverses_of_favorites, source: :micropost
  
  
  # def favoriting(other_micropost)
  #     self.favorites.find_or_create_by(micropost_id: other_micropost.id)
  # end
  
  # def unfavorite(other_micropost)
  #   favorite = self.favorites.find_by(micropost_id: other_micropost.id)
  #   favorite.destroy if favorite
  # end
  
  # def favorited?(other_micropost)
  #   self.favoritings.include?(other_micropost)
  # endfa
  
end
