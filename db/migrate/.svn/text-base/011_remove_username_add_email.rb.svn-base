class RemoveUsernameAddEmail < ActiveRecord::Migration
  def self.up
  	remove_column :users, :name
  	add_column    :users, :email, :string
  end

  def self.down
  	add_column     :users, :name, :string
  	remove_column  :users, :email
  end
end
