class CreateYears < ActiveRecord::Migration
  def self.up
    create_table :years do |t|
      t.column :studyplan_id, :integer
    end
  end

  def self.down
    drop_table :years
  end
end
