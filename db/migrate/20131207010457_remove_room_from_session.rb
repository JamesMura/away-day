class RemoveRoomFromSession < ActiveRecord::Migration
  def up
    remove_column :sessions, :room
  end

  def down
    add_column :sessions, :room, :string
  end
end
