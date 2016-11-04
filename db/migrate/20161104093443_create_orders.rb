class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer
      t.string     :status
      t.integer    :subtotal
      t.integer    :tax
      t.integer    :shipping
      t.integer    :total_price
      t.text       :shipping_address
      t.text       :billing_address
      t.datetime   :canceled_at
      t.timestamps
    end
  end
end
