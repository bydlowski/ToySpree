Deface::Override.new( :virtual_path  => 'spree/products/show',
                      :name => 'Swith places - Thumbnail and image',
                      :replace => '#product-images',
                      :text => '
                      <div id="product-images" data-hook="product_images">
                        <div id="thumbnails" data-hook>
                          <%= render :partial => "thumbnails" %>
                        </div>
                        <div id="main-image" class="panel panel-default" data-hook>
                          <div class="panel-body text-center">
                            <%= render :partial => "image" %>
                          </div>
                        </div>
                      </div>',
                      :disabled => false) 