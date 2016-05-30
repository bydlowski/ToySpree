Deface::Override.new( :virtual_path  => 'spree/layouts/spree_application',
                      :name => 'Create footer',
                      :insert_after => '.container',
                      :text => "
                      <div id='footer'>
                        <div class='footer-container'>
                          <span><a href=''>bydlowski.com</a> &#169; 2016</span><span>About us</span>
                        </div
                      </div>",
                      :disabled => false) 