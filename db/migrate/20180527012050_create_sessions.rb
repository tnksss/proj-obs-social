class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.date :date
      t.time :start_session
      t.time :end_session
      t.text :note

      t.timestamps
    end
  end
end
