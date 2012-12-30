modules = {
	corestyles {
		resource url:'css/less/index.less',attrs:[rel: "stylesheet/less", type:'css']
	}
	
	libs {
		resource url:'js/libs/jquery-1.7.2.min.js'
		//Bootstrap JS components
		resource url:'js/libs/bootstrap/bootstrap-alert.js'
		resource url:'js/libs/bootstrap/bootstrap-button.js'
		resource url:'js/libs/bootstrap/bootstrap-carousel.js'
		resource url:'js/libs/bootstrap/bootstrap-collapse.js'
		resource url:'js/libs/bootstrap/bootstrap-dropdown.js'
		resource url:'js/libs/bootstrap/bootstrap-modal.js'
		resource url:'js/libs/bootstrap/bootstrap-tooltip.js'
		resource url:'js/libs/bootstrap/bootstrap-popover.js'
		resource url:'js/libs/bootstrap/bootstrap-scrollspy.js'
		resource url:'js/libs/bootstrap/bootstrap-tab.js'
		resource url:'js/libs/bootstrap/bootstrap-transition.js'
		resource url:'js/libs/bootstrap/bootstrap-typeahead.js'
		resource url:'js/libs/bootstrap/bootstrap-transition.js'
		
		resource url:'js/libs/underscore.js'
		resource url:'js/libs/backbone.js'
		resource url:'js/libs/templateManager.js'
		resource url:'js/libs/mustache.js'
	}
	
	corejs {
		dependsOn "libs"
		resource url:'js/application.js'
		resource url:'js/index.js'
	}
}
