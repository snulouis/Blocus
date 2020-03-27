class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|

      t.integer :score, default: 0
      t.string :kind
      t.integer :duration
      t.string :start
      t.string :end
      t.integer :blok_id, default: 1
      t.timestamps
    end
  end
end
