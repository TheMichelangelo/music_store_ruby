class Album < ApplicationRecord
  attr_accessible :name,:price,:type,:genre,:musician_id
  validates :name , :length => {:maximum => 72}
  belongs_to :musician
end
