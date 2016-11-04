class AddDetailsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :first_name, :string, null: false
    add_column :customers, :last_name,  :string, null: false
    add_column :customers, :address,    :string
  end
end
