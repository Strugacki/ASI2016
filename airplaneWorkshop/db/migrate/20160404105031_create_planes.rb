class CreatePlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :planes do |t|
      t.string :brand
      t.string :model
      t.text :fault

      t.timestamps
    end
  end
end
