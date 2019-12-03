class Musician < ApplicationRecord
  attr_accessible :name,:surname,:age,:home_adress,:studio_id
  validates :home_adress , :length => {:maximum => 50}
  validates :name,presence: true,uniqueness: true
  validates :home_adress,presence: true,uniqueness: true
  validates :surname,presence: true
  has_many :albums
  belongs_to :studio
end
