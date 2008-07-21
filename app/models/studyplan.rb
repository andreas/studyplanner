class Studyplan < ActiveRecord::Base
  belongs_to :user
	has_many :years, :dependent => :destroy
end