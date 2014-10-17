class Album < ActiveRecord::Base
  belongs_to :genre_type
  has_many :songs
  has_and_belongs_to_many :artists
  has_many :albums_artists
  has_many :artists ,through: :albums_artists
  accepts_nested_attributes_for :artists, allow_destroy: true,
                               :reject_if => proc { |attrs| attrs.all? { |key, value| value.blank? } }

  validates :album_name,
            presence: true,
            #alphanumeric: true,
            length: {maximum: 100}
# category id must have value
  validates :genre_type_id,  presence: true#,inclusion: { in: GenreType.ids },
#strips extra space in artist name
  auto_strip_attributes :album_name, :squish => true, :nullify => false
# composite primary key
  validates :album_name, uniqueness: {scope: :genre_type_id}
#image upload
  mount_uploader :image, AvatarUploader

end
