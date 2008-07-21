class AddCoursePoints < ActiveRecord::Migration
  def self.up
    add_column :courses, :points, :integer
  end

  def self.down
    remove_column :courses, :points
  end
end
