class RemoveArrivalTimeFromVehicles < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehicles, :arrival_time, :datetime
  end
end
