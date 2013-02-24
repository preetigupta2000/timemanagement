	jQuery(document).ready(function() {
		jQuery('a[data-confirm]').click(function(ev) {
	        var href = jQuery(this).attr('href');

	        if (!jQuery('#dataConfirmModal').length) {
	        	jQuery('body').append('<div id="dataConfirmModal" class="modal" role="dialog" aria-labelledby="dataConfirmLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="dataConfirmLabel">Please Confirm</h3></div><div class="modal-body"></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button><a class="btn btn-primary" id="dataConfirmOK">OK</a></div></div>');
	        } 
	        jQuery('#dataConfirmModal').find('.modal-body').text(jQuery(this).attr('data-confirm'));
	        jQuery('#dataConfirmOK').attr('href', href);
	        jQuery('#dataConfirmModal').modal({show:true});
	        return false;
	    });
	});