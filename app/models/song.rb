class Song < ActiveRecord::Base
  belongs_to :album
  has_many :artists_songs
  has_many :artists, throug: :artists_songs
  validates :song_name , presence: true,length: {maximum: 100}

# category id must have value
  validates :album_id,  presence: true#,inclusion: { in: GenreType.ids },
#strips extra space in artist name
  auto_strip_attributes :song_name, :squish => true, :nullify => false
# composite primary key
  validates :song_name, uniqueness: {scope: :album_id}
#image upload
  mount_uploader :image, AvatarUploader

end
