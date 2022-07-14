class Auction < ApplicationRecord

    belongs_to :user, optional: true
    has_many :bids 



    validates :title, presence: true
    validates :description, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
end
