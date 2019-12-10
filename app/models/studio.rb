class Studio < ApplicationRecord
  validates :name , :length => {:maximum => 72},  :presence => {:message => "Вкажіть назву студії"}
  validates :location, :presence => {:message => "Вкажіть місце знаходження студії"}
  validates :founder, :presence => {:message => "Вкажіть ім'я засновника"}
  has_one :musician
end
