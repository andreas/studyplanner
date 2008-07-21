// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function moveToPointer(elem, event) {
	$(elem).setStyle(
	        {'left': Event.pointerX(event) + 'px',
					 'top': Event.pointerY(event) + 'px'
					});
};

Ajax.Responders.register({
	onCreate: function() {
		Element.show('ajaxLoading');
	},
	onComplete: function() {
		Element.hide('ajaxLoading');
	}
});