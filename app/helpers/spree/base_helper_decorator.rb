Spree::BaseHelper.class_eval do
  def geek_stylesheets(paths=geek_stylesheet_paths)
    paths.blank? ? '' : stylesheet_link_tag(paths, :cache => true)
  end
  
  def geek_stylesheet_paths
    paths = %w{advabase layout buttons list posters}
    if (paths.blank?)
      []
    else
      paths.split(',')
    end
  end
  
  def geekbox_logo
    link_to(root_url, :class=>"logo", :rel=>"home") do
      raw [
        image_tag('logo-geekbox_blue.png', :alt=>t('geekbox.logo.alt'), :title => t('geekbox.logo.title')), 
        "<span>", t('geekbox.logo.span'), "</span>"
        ].join(" ")
    end
  end
  
  def geek_order_price(order, options={})
      options.assert_valid_keys(:format_as_currency, :show_vat_text, :show_price_inc_vat)
      options.reverse_merge! :format_as_currency => true, :show_vat_text => true

      # overwrite show_vat_text if show_price_inc_vat is false
      options[:show_vat_text] = Spree::Config[:show_price_inc_vat]

      amount =  order.item_total
      amount += Calculator::Vat.calculate_tax(order) if Spree::Config[:show_price_inc_vat]

      options.delete(:format_as_currency) ? number_to_currency(amount, :format=>t('geekbox.action_bar.currency_format')) : amount
    end
end