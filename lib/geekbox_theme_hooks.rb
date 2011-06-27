class GeekboxThemeHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_before :main, 'shared/action_bar/bar'
end