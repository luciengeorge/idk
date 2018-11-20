class AddPhoneToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :phone, :string
  end
end
