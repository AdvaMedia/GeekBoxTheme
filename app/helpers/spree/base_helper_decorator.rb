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
end