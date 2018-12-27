class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date_date
      t.text :event_text
      t.string :country
      t.string :town

      t.timestamps
    end
  end
end
