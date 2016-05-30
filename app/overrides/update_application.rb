Deface::Override.new( :virtual_path  => 'spree/layouts/spree_application',
                      :name => 'Create footer',
                      :insert_after => '.container',
                      :text => "
                      <div id='footer'>
                        <div class='footer-container'>
                          <span><%= link_to 'Início', spree.root_path %></span>
                          <span><%= link_to 'Sobre a gente', main_app.sobre_path %></span>
                          <span><%= link_to 'Contato', spree.contact_us_path %></span>
                          <span class='right'><a href='http://bydlowski.com/'>bydlowski.com</a> &#169; 2016</span>
                        </div
                      </div>",
                      :disabled => false) 