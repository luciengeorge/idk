class AddCountToFollowers < ActiveRecord::Migration[5.2]
  def change
    add_column :followers, :count, :integer, default: 0;
  end
end
