class CreateLikedEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :liked_events do |t|
      t.integer :liked

      t.timestamps
    end
  end
end
