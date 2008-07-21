class CreateTimetableModules < ActiveRecord::Migration
  def self.up
    create_table :timetable_modules do |t|
      t.column :name, :string, :limit => 3
    end
  end

  def self.down
    drop_table :timetable_modules
  end
end
