module OrdersHelper

  def size_options_for_select( product )
    sizes = product.skus.map &:size
    sizes.map { |s| [s.name, s.id] }.uniq
  end

  def color_options_for_select( product )
    colors = product.skus.map(&:color).uniq
  end

  def stripe_publishable_key
    STRIPE_PUBLISHABLE_KEY
  end

end
