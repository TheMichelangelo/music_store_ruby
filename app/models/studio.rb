class Studio < ApplicationRecord
  validates :name , :length => {:maximum => 72},  :presence => {:message => "Вкажіть назву студії"}
  validates :location, :presence => {:message => "Вкажіть місце знаходження студії"}
  validates :founder, :presence => {:message => "Вкажіть ім'я засновника"}
  belongs_to :musician
end
