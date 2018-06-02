class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.datetime :date
      t.datetime :start_session
      t.datetime :end_session
      t.text :note

      t.timestamps
    end
  end
end
