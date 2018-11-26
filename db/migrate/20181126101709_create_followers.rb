class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.references :user, foreign_key: true, null: false
      t.integer :follower_id, null: false

      t.timestamps
    end
  end
end
