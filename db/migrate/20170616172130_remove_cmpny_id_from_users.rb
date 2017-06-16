class RemoveCmpnyIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :cmpny_id
  end
end
