$(document).ready(function() {
var root = "http://localhost:3000/"
	if (window.location.href == root) {
		var slide = 1;
		$('body').click(function() {
			if (slide == 1) {
				$('#slide-1').hide();
				$('#slide-2').removeClass('hidden');
				$('#slide-2').show();
			}
			else if (slide == 2) {
				$('#slide-2').hide();
				$('#slide-3').removeClass('hidden');
				$('#slide-3').show();
			}
			else if (slide == 3) {
				window.location.href = root + "conversations/new?user=1";
				return;
			}
			slide += 1;
		});
	}
});