class Studio < ApplicationRecord
  validates :name , :length => {:maximum => 72}
  belongs_to :musician
end
