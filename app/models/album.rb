class Album < ApplicationRecord
  validates :name , :length => {:maximum => 72}, :presence => {:message => "Вкажіть ім'я"}
  validates :price, :presence => {:message => "Вкажіть ціну"}
  validates :genre, :presence => {:message => "Вкажіть жанр музики"}
  belongs_to :musician
end
