class AddIdNoToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :ID_no, :integer
  end
end
