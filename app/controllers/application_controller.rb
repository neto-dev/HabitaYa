class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_filter do
	  resource = controller_name.singularize.to_sym
	  method = "#{resource}_params"
	  params[resource] &&= send(method) if respond_to?(method, true)
	end
	
  	rescue_from CanCan::AccessDenied do |exception|
    	redirect_to root_url, :alert => "No tienes permisos para entrar a esta pagina"
	end


    protected

        #Redireccionamiento de devise

        def after_sign_in_path_for(resource)
          "/"
        end

        def after_update_path_for(resource)
          "/"
        end

end
