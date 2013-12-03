class CreateSessions < ActiveRecord::Migration
  def change
     create_table :sessions do |t|
       t.string :title, :speaker, :description, :location, :theme, :resource, :photo
       t.datetime :time
       t.timestamps
     end
  end
end