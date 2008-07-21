class ChangePointsToFloat < ActiveRecord::Migration
  def self.up
    change_column :courses, :points, :float
  end

  def self.down
    change_column :courses, :points, :integer
  end
end
