class Order < ActiveRecord::Base
  include AASM
  has_many   :order_line_items
  belongs_to :customer

  aasm column: :status do
    state :in_cart, initial: true
    state :placed
    state :canceled
    state :shipped
    state :delivered
    state :returned

    event :place do
      transitions from: :in_cart, to: :placed
    end

    event :cancel do
      transitions from: :placed, to: :canceled
    end

    event :ship do
      transitions from: :placed, to: :shipped
    end

    event :deliver do
      transitions from: :shipped, to: :delivered
    end

    event :return do
      transitions from: :delivered, to: :returned
    end
  end

end
