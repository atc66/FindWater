class Waterbottle < ApplicationRecord
	belongs_to :user
	has_many :waterbottle_histroies
end
