class AddIndexToUsersEmai < ActiveRecord::Migration
  def change
  	add_index :users, :emai, unique: true
  end
end
