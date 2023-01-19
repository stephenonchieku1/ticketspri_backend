class AddDepartureTimeToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :departure_time, :time
  end
end
