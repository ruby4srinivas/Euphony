class Song < ActiveRecord::Base
  belongs_to :album
  has_many :artists_songs
  has_many :artists, throug: :artists_songs
end
