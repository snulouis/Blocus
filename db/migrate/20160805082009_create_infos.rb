class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|

      t.integer :popularity
      t.integer :blok_id
      t.text :content, default: ""
      t.timestamps
    end
  end
end
