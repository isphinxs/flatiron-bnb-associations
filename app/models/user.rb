class User < ApplicationRecord
    # host associations
    has_many :listings, :foreign_key => "host_id"
    has_many :reservations, through: :listings
    # guest associations
    has_many :trips, :class_name => "Reservation", :foreign_key => "guest_id"
    has_many :reviews, :foreign_key => "guest_id"
end
