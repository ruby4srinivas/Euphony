class Category < ActiveRecord::Base
   has_many :artists
   auto_strip_attributes :category_name, :squish => true, :nullify => false
  #validates_acceptance_of :category_name
  validates :category_name, presence: true, uniqueness: true  ,onlycharacters: true, length: {maximum: 40}
  default_scope {order(:category_name)}
end
