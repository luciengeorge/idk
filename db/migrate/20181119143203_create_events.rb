class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.integer :guests
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
