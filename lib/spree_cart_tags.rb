module SpreeCartTags
  include Radiant::Taggable
  include ActionView::Helpers::TagHelper
  
  tag "spree_cart" do |tag|
    url = tag.attr['url']

    content_tag 'div', tag.expand, :id => 'spree_cart', 'data-spree-url' => url
  end
  
  tag "spree_cart:login_name" do
    %Q{<span class="login_name"></span>}
  end
  
  tag "spree_cart:login_or_out" do
    %Q{<span class="login_or_out"></span>}
  end
  
  tag "spree_cart:cart_content" do
    %Q{<span class="cart_content"></span>}
  end
end