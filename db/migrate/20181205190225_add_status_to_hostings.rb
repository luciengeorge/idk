class AddStatusToHostings < ActiveRecord::Migration[5.2]
  def change
    add_column :hostings, :status, :string, default: 'pending'
  end
end
