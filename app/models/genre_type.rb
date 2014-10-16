class GenreType < ActiveRecord::Base
  has_many :albums
  belongs_to :genre_language
  default_scope { order( 'genre_language_id asc, genre_type_name') }
  validates :genre_type_name,
            presence: true,
            onlycharacters: true,
            length: {maximum: 100}
# category id must have value
  validates :genre_language_id,presence: true #, inclusion: { in: GenreLanguage.ids},
#strips extra space in artist name
  auto_strip_attributes :genre_type_name, :squish => true, :nullify => false
# composite primary key
  validates :genre_type_name, uniqueness: {scope: :genre_language_id }
  mount_uploader :image, AvatarUploader
end
