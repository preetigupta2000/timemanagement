class UrlMappings {

	static mappings = {
		
		"/login/$action?/$id?"(controller:"login")
		"/logout/$action?/$id?"(controller:"logout")
		
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
