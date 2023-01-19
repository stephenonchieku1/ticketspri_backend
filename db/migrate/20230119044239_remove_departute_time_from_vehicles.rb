class RemoveDepartuteTimeFromVehicles < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehicles, :departure_time, :datetime
  end
end
