class CreateOrderLineItems < ActiveRecord::Migration
  def change
    create_table :order_line_items do |t|
      t.references :order
      t.references :sku
      t.integer    :quantity
      t.integer    :line_total
      t.timestamps
    end
  end
end
