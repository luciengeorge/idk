class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.boolean :outdoor

      t.timestamps
    end
  end
end
