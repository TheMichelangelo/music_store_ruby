class Studio < ApplicationRecord
  attr_accessible :name,:location,:founder,:musician_id
  validates :name , :length => {:maximum => 72}
  belongs_to :musician
end
