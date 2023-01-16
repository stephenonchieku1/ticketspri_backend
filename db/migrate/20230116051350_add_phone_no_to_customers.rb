class AddPhoneNoToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :phone_no, :integer
  end
end
