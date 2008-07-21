class AddSpringFallFlag < ActiveRecord::Migration
  def self.up
  	add_column(:timetable_modules, :fall, :boolean)
  	TimetableModule.update_all "fall = true", "name like 'E%'"
  	TimetableModule.update_all "fall = false", "name like 'F%'"
  end

  def self.down
  	remove_column(:timetable_modules, :fall)
  end
end
