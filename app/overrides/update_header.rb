Deface::Override.new( :virtual_path  => "spree/shared/_search",
                      :name => "Remove_category_list_header",
                      :remove => "erb[loud]:contains('select_tag')",
                      :disabled => false) 