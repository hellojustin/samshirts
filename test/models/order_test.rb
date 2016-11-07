require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  setup do
    @order = Order.new
  end

  test "Initial state is 'in_cart'." do
    assert_equal @order.status, 'in_cart'
  end

  test "Transitions to 'placed' state upon #place!" do
    @order.place!
    assert_equal @order.status, 'placed'
  end

  test "Transitions from 'placed' to 'canceled' state upon #cancel!" do
    @order.place!
    @order.cancel!
    assert_equal @order.status, 'canceled'
  end

  test "Transitions from 'placed' to 'shipped' state upon #ship!" do
    @order.place!
    @order.ship!
    assert_equal @order.status, 'shipped'
  end

  test "Transitions from 'shipped' to 'delivered' state upon #deliver!" do
    @order.place!
    @order.ship!
    @order.deliver!
    assert_equal @order.status, 'delivered'
  end

  test "Transitions from 'delivered' to 'returned' state upon #return!" do
    @order.place!
    @order.ship!
    @order.deliver!
    @order.return!
    assert_equal @order.status, 'returned'
  end

  test "An order cannot be canceled after it has shipped." do
    @order.place!
    @order.ship!
    assert_raises(AASM::InvalidTransition) { @order.cancel! }
  end

  test "An order cannot be returned before it is delivered." do
    @order.place!
    @order.ship!
    assert_raises(AASM::InvalidTransition) { @order.return! }
  end
end
