class CreateSkus < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name
      t.timestamps
    end

    create_table :skus do |t|
      t.string     :product_title
      t.text       :description
      t.string     :color
      t.references :sizes
      t.integer    :price
      t.timestamps
    end
  end
end
