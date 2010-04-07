(function($) {
	$.fn.spree_cart = function() {
		return this.each(function() {
			var $this = $(this)
			var cart_json_url = $this.attr('data-spree-url') + '/current_cart.json?callback=?'
			
			$.getJSON(cart_json_url, function(cart) {
				$('.cart_content', $this).html(cart.cart_link)
				
				var login_logout_field = $('.login_or_out', $this)
				
				if (cart.logged_in) {
					$('.login_name', $this).html('<a href="' + cart.user_profile + '">' + cart.login + '</a>' )
					login_logout_field.html('<a href="' + cart.logout_url + '">' + login_logout_field.attr('data-logout') + '</a>')
				} else {
					login_logout_field.html('<a href="' + cart.login_url + '">' + login_logout_field.attr('data-login') + '</a>')
				}
			});
		})
	}
})(jQuery)