module ApplicationHelper

  def format_price( amount_in_pennies )
    amount_in_dollars = amount_in_pennies / 100.to_f
    number_to_currency amount_in_dollars
  end

  def active_class( path )
    'active' if path == request.env['PATH_INFO']
  end

  def form_group &block
    content_tag :div, class: 'form-group' do
      yield
    end
  end

  def stripe_publishable_key
    STRIPE_PUBLISHABLE_KEY
  end

end
