class Musician < ApplicationRecord
  validates :home_adress , :length => {:maximum => 50}
  validates :name,:presence => {:message => "Вкажіть ім'я музиканта"},uniqueness: true
  validates :home_adress,:presence => {:message => "Вкажіть домашню адресу виконавця"},uniqueness: true
  validates :surname, :presence => {:message => "Вкажіть прізвище виконавця"}
  has_many :albums
  belongs_to :studio
end
