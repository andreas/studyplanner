class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.column :name, :string, :limit => 128
      t.column :code, :string, :limit => 10
    end
  end

  def self.down
    drop_table :courses
  end
end
