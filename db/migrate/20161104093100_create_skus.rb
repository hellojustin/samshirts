class CreateSkus < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :title
      t.text    :description
      t.integer :price
      t.timestamps
    end

    create_table :sizes do |t|
      t.string :name
      t.timestamps
    end

    create_table :skus do |t|
      t.references :product
      t.string     :color
      t.references :size
      t.timestamps
    end
  end
end
