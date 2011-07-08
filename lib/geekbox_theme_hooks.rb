class GeekboxThemeHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_before :main, 'shared/action_bar/bar'
  insert_after :cart_form, 'products/compare'
  
  insert_after :admin_configurations_sidebar_menu, 'admin/shared/sidebar_menu'
  insert_after :admin_configurations_menu, 'admin/shared/configurations_menu'
end