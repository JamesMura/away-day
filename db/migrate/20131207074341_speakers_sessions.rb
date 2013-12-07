class SpeakersSessions < ActiveRecord::Migration
  def up
    create_table 'sessions_speakers', :id => false do |t|
        t.column :speaker_id, :integer
        t.column :session_id, :integer
      end
  end

  def down
    drop_table 'sessions_speakers'
  end
end
