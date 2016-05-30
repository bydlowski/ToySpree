require 'colorize'
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Only two per row',
                      :set_attributes => '[data-hook="products_list_item"]',
                      :attributes => {:class => 'col-md-6 col-sm-6 col-xs-6 product-list-item'})
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Insert description',
                      :insert_before => '.panel-footer',
                      :text => '<div class="panel-footer text-center">
                                  <span itemprop="description" class="no-border">
                                    <span class="price selling lead"><%= product.description %></span>
                                  </span>
                                </div>',
                      :disabled => false)
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Change image size',
                      :replace => '.panel-body',
                      :text => ' <div class="panel-body text-center product-body">
                                  <%= link_to url, itemprop: "url" do %>
                                    <%= product_image(product, itemprop: "image") %><br/>
                                  <% end %>
                                  <br/>
                                </div>',
                      :disabled => false)
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Insert stock',
                      :replace => '[itemprop="offers"]',
                      :text => '<span itemprop="description" class="no-border">
                                  <%= link_to url, itemprop: "newurl" do %>
                                    <span class="price selling lead link-to-product">
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
                                  <% end %>
                                </span>',
                      :disabled => false)