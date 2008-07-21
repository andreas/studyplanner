class CreateCourseRegistrations < ActiveRecord::Migration
  def self.up
    create_table :course_registrations do |t|
      t.column :course_version_id, :integer
      t.column :year_id, :integer
    end
  end

  def self.down
    drop_table :course_registrations
  end
end
