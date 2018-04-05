class Waterbottle < ApplicationRecord
	belongs_to :user
	
	before_update :increase_fills

  def increase_fills
  	if self.refills_changed?
  		self.refills = self.refills + self.refills_was
  	end 
  end
  
end
