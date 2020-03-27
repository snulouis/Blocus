class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|

      t.float :lat
      t.float :lng
      t.integer :region_id
      t.string :name, default: "nowhere"
      t.timestamps
    end
  end
end
