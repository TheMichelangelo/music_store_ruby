class Album < ApplicationRecord
  validates :name , :length => {:maximum => 72}, :presence => {:message => "Вкажіть ім'я"}
  validates :price, :presence => {:message => "Вкажіть "}
  validates :type, :presence => {:message => "Вкажіть "}
  validates :genre, :presence => {:message => "Вкажіть "}
  belongs_to :musician
end
