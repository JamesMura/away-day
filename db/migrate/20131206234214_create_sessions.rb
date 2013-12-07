class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :description
      t.datetime :startTime
      t.datetime :endTime
      t.string :room

      t.timestamps
    end
  end
end
