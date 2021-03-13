class CreateExplores < ActiveRecord::Migration[6.0]
  def change
    create_table :explores do |t|
      t.string :title
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
