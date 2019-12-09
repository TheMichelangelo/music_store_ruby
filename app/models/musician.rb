class Musician < ApplicationRecord
  validates :home_adress , :length => {:maximum => 50},:presence => {:message => "Вкажіть "}
  validates :name,:presence => {:message => "Вкажіть "},uniqueness: true
  validates :home_adress,:presence => {:message => "Вкажіть "},uniqueness: true
  validates :surname, :presence => {:message => "Вкажіть "}
  has_many :albums
  belongs_to :studio
end
