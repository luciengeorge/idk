class CreateActivityTags < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_tags do |t|
      t.references :activity, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
