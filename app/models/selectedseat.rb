class Selectedseat < ApplicationRecord
    validates :seat_no, presence: true, uniqueness: true, numericality: { only_integer: true, greater_than: 0, less_than: 38}
end
