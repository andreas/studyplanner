class AddYearTitle < ActiveRecord::Migration
  def self.up
    add_column 'years', 'title', :string
  end

  def self.down
    remove_column 'years', 'title'
  end
end
