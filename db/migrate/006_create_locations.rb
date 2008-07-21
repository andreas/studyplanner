class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.column :course_version_id, :integer
      t.column :timetable_module_id, :integer
    end
  end

  def self.down
    drop_table :locations
  end
end
