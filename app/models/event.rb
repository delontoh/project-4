class Event < ApplicationRecord
    has_and_belongs_to_many :users

    geocoded_by :address
    after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
