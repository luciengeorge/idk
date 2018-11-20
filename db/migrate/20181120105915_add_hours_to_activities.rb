class AddHoursToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :hours, :string
  end
end
