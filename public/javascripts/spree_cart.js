(function($) {
	$.fn.spree_cart = function() {
		return this.each(function() {
			var $this = $(this)
			var cart_json_url = $this.attr('data-spree-url') + '/current_cart.json?callback=?'
			
			$.getJSON(cart_json_url, function(cart) {
				$('.cart_content', $this).html(cart.cart_link)
				
				if (cart.logged_in) {
					$('.login_name', $this).html('<a href="' + cart.user_profile + '">' + cart.login + '</a>' )
					$('.login_or_out', $this).html('<a href="' + cart.logout_url + '">Logout</a>')
				} else {
					$('.login_or_out', $this).html('<a href="' + cart.login_url + '">Login</a>')
				}
			});
		})
	}
})(jQuery)