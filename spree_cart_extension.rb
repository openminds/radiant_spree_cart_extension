class SpreeCartExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/spree_cart"
  
  def activate
    Page.class_eval do
      include SpreeCartTags
    end
  end
  
  def deactivate
  end
  
end
