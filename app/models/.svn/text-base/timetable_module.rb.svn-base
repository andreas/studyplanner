class TimetableModule < ActiveRecord::Base
	has_many :locations
	
	validates_presence_of :name
	
	def in_spring?
	  !fall
	end
	
	def in_fall?
	  fall
  end
	
	def seasonless_name
  	name[1..2]
  end
end