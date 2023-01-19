class AddArrivalTimeToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :arrival_time, :time
  end
end
