class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"user",action="login")
		"/home"(controller:"main")
	//	"/"(view:"/index")
		"500"(view:'/error')
	}
}
