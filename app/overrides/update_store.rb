require 'colorize'
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Only two per row',
                      :set_attributes => '[data-hook="products_list_item"]',
                      :attributes => {:class => 'col-md-6 col-sm-6 col-xs-6 product-list-item'})
Deface::Override.new( :virtual_path  => 'spree/shared/_products',
                      :name => 'Insert stock',
                      :insert_after => 'erb[loud]:contains("small_image")',
                      :text => '<br /><%= content_tag(:span, product.description, class: "info", itemprop: "description") %>',
                      :disabled => false) 