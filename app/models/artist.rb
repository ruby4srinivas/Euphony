class Artist < ActiveRecord::Base
  belongs_to :category , :class_name => "Category", :foreign_key => "category_id"
  # has_and_belongs_to_many :albums
  # has_and_belongs_to_many :songs
  has_many :artists_songs
  has_many :songs, through: :artists_songs
  has_many :albums_artists
  has_many :albums , through: :albums_artists
  validates :artist_name,
                      presence: true,
                      onlycharacters: true,
                      length: {maximum: 100}
# category id must have value
  validates :category_id, inclusion: { in: Category.ids }, presence: true
#strips extra space in artist name
  auto_strip_attributes :artist_name, :squish => true, :nullify => false
  # composite primary key
  validates :artist_name, uniqueness: {scope: :category_id}
 mount_uploader :image, AvatarUploader
  default_scope {order (:artist_name)}
end
