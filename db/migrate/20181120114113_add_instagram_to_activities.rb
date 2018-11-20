class AddInstagramToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :instagram, :string
  end
end
