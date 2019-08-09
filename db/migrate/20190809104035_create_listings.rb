class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :playlist, foreign_key: true
      t.string :url
      t.boolean :suggestion
      t.integer :position
      t.string :name

      t.timestamps
    end
  end
end
