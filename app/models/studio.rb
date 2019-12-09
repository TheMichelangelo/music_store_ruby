class Studio < ApplicationRecord
  validates :name , :length => {:maximum => 72} 
  validates :location, :presence => {:message => "Вкажіть "}
  validates :founder, :presence => {:message => "Вкажіть "}
  belongs_to :musician
end
