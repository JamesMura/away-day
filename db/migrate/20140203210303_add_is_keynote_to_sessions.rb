class AddIsKeynoteToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :is_keynote, :boolean
  end
end
