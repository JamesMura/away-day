class AddRoomToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :room_id, :integer
  end
end
