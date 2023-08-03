class Event < ApplicationRecord
    belongs_to :user
    validates :city, :state, :venue, :artist, :date, :show_time, :genre, :images, :user_id, presence: true
end
