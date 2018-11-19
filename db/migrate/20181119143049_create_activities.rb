class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.references :category, foreign_key: true
      t.datetime :date
      t.float :price
      t.string :photo
      t.string :location
      t.integer :age

      t.timestamps
    end
  end
end
