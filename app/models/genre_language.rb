class GenreLanguage < ActiveRecord::Base
  #self.primary_key = :genre_language_id
  has_many :genre_types
  auto_strip_attributes :genre_language_name , :squish => true, :nullify => false
  validates :genre_language_name, presence: true, uniqueness: true  ,onlycharacters: true, length: {maximum: 40}
  default_scope {order(:genre_language_name)}
end
