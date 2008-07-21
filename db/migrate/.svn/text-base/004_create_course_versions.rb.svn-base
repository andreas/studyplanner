class CreateCourseVersions < ActiveRecord::Migration
  def self.up
    create_table :course_versions do |t|
      t.column :course_id, :integer
    end
  end

  def self.down
    drop_table :course_versions
  end
end
