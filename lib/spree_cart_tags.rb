module SpreeCartTags
  include Radiant::Taggable
  include ActionView::Helpers::TagHelper
  
  tag "spree_cart" do |tag|
    url = tag.attr['url']

    content = tag.expand
    content += %Q{
      <script type="text/javascript">
        jQuery(function() {
          $('#spree_cart').spree_cart();
        })
      </script>
    }
    
    content_tag 'div', content, :id => 'spree_cart', 'data-spree-url' => url
  end
  
  tag "spree_cart:login_name" do
    %Q{<span class="login_name"></span>}
  end
  
  tag "spree_cart:login_or_out" do |tag|
    %Q{<span class="login_or_out" data-login="#{tag.attr['login'] || 'Login'}" data-logout="#{tag.attr['logout'] || 'Logout'}"></span>}
  end
  
  tag "spree_cart:cart_content" do
    %Q{<span class="cart_content"></span>}
  end
end