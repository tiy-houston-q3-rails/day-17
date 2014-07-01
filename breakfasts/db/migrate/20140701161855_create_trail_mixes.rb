class CreateTrailMixes < ActiveRecord::Migration
  def change
    create_table :trail_mixes do |t|
      t.string :name
      t.text :ingredients

      t.timestamps
    end
  end
end
