class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :city
      t.string :state
      t.string :venue
      t.string :artist
      t.date :date
      t.string :show_time
      t.string :genre
      t.text :images
      t.integer :user_id

      t.timestamps
    end
  end
end
