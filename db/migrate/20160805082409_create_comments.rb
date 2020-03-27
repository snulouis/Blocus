class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|

      t.integer :user_id
      t.integer :info_id
      t.text :content, default: ""
      t.timestamps
    end
  end
end
