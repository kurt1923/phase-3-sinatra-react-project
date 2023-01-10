class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.integer :customer_id
      t.timestamps
    end
  end
end
