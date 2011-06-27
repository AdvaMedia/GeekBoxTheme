Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'geekbox_theme'
  s.version     = '0.60.1'
  s.summary     = 'GeekBox theme for GeekBox shop'
  s.description = 'GeekBox theme for GeekBox shop'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Kirillov Alexander, Shovtuk Alexander'
  s.email             = 'sale@geekbox.ru'
  s.homepage          = 'http://geekbox.ru'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.60.1')
  s.add_dependency('haml')
end
