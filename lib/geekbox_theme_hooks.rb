class GeekboxThemeHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_before :main, 'shared/action_bar/bar'
  insert_after :cart_form, 'products/compare'
end