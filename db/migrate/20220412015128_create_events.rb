class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_type
      t.date :event_date
      t.text :title
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
