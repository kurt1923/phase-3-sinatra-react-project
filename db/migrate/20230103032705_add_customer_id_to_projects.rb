class AddCustomerIdToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :customer_id, :integer
  end
end
