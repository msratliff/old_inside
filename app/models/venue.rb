class Venue < ApplicationRecord
  has_many :users

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.city.present? and obj.city_changed? }

  def address
  	[street, city, state, zipcode, 'USA'].compact.join(', ')
  end

end
