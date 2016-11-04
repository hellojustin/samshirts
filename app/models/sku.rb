class Sku < ActiveRecord::Base
  belongs_to :product
  belongs_to :size
  has_many   :order_line_items
end
