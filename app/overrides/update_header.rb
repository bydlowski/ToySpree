Deface::Override.new( :virtual_path  => 'spree/shared/_nav_bar',
                      :name => 'Remove_category_list_header',
                      :remove => '#search-bar',
                      :disabled => false) 
Deface::Override.new( :virtual_path  => 'spree/shared/_main_nav_bar',
                      :name => 'Remove_home_link',
                      :remove => '#home-link',
                      :disabled => false) 
Deface::Override.new( :virtual_path  => 'spree/shared/_header',
                      :name => 'Put_cart_on_top_header',
                      :insert_before => '#logo',
                      :text => "<li id='link-to-cart' data-hook><noscript><%= link_to Spree.t(:cart), '/cart' %></noscript>&nbsp;</li><script>Spree.fetch_cart()</script>",
                      :disabled => false) 
Deface::Override.new( :virtual_path  => 'spree/shared/_header',
                      :name => 'Remove_seconde header',
                      :remove => '#spree-header > .container',
                      :disabled => false) 