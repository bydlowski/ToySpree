Deface::Override.new( :virtual_path  => 'spree/home/index',
                      :name => 'Insert_slider',
                      :insert_before => '[data-hook="homepage_products"]',
                      :text => '
                      <div class="flexslider">
                        <ul class="slides">
                          <li>
                            <%= image_tag("slider/slider1.jpg") %>
                          </li>
                          <li>
                            <%= image_tag("slider/slider2.JPG") %>
                          </li>
                          <li>
                            <%= image_tag("slider/slider3.jpg") %>
                          </li>
                        </ul>
                      </div>',
                      :disabled => false) 