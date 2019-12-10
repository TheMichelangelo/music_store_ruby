module Populator
  # Builds multiple Populator::Record instances and saves them to the database
  class Factory
    def rows_sql_arr
      @records.map do |record|
        quoted_attributes = record.attribute_values.map { |v| @model_class.connection.quote(v) }
        "(#{quoted_attributes.join(', ')})"
      end
    end
  end
end

require 'faker'

namespace :db do
  desc "Populates tables with some data"
  task populate: :environment do
    Musician.delete_all
    Album.delete_all
    Studio.delete_all
    i=1
    Studio.populate(10) do |studio|
      studio.name=Faker::Book.publisher
      studio.location=Faker::Address.full_address
      studio.founder=Faker::Name.name
      i+=1
    end
    i=1
    Musician.populate(10) do |musician|
      musician.name=Faker::Name.first_name;
      musician.surname=Faker::Name.last_name;
      musician.age=Faker::Number.between(20,60)
      musician.home_adress=Faker::Address.city;
      musician.studio_id=i
      Album.populate(3) do |album|
        album.name=Faker::Music.album;
        album.price=Faker::Number.between(5,100)
        album.genre=Faker::Music.genre;
        album.musicians_id=i
          #album.musicians_id=Faker::Number.between(1,15)
      end
      i+=1
    end
  end
end
