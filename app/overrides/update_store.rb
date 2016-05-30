require 'colorize'
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Only two per row',
                      :set_attributes => '[data-hook="products_list_item"]',
                      :attributes => {:class => 'col-md-6 col-sm-6 col-xs-6 product-list-item'})
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Insert description',
                      :insert_before => '.panel-footer',
                      :text => '<div class="panel-footer text-center">
                                  <span itemprop="description">
                                    <span class="price selling lead"><%= product.description %></span>
                                  </span>
                                </div>',
                      :disabled => false)
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Insert stock',
                      :replace => '[itemprop="offers"]',
                      :text => '<span itemprop="description">
                                  <span class="price selling lead">
                                    <%= "Estoque: #{ 
                                      if product.stock_items[0]["count_on_hand"] == 0 
                                        "Esgotado :(" 
                                      elsif product.stock_items[0]["count_on_hand"] == 1
                                        "Um" 
                                      elsif product.stock_items[0]["count_on_hand"] == 2
                                        "Dois" 
                                      elsif product.stock_items[0]["count_on_hand"] == 3
                                        "Três"
                                      elsif product.stock_items[0]["count_on_hand"] == 4
                                        "Quatro"
                                      else
                                        "Muitos :)"
                                      end
                                    }" %>
                                  </span>
                                </span>',
                      :disabled => false)