class User < ApplicationRecord
    has_many :items
    has_many :stores, through: :items
    has_one :address
    accepts_nested_attributes_for :address
end
