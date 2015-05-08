class RegistrationsController < Devise::RegistrationsController
	prepend_before_filter :authenticate_scope!, :only => [:edit, :update, :destroy]
	before_filter :configure_permitted_parameters , if: :devise_controller?
	  def destroy
	  	Publication.delete_all(:user_id => current_user.id)
	  	Ubication.delete_all(:user_id => current_user.id)
	  	Image.delete_all(:user_id => current_user.id)
	    resource.destroy
	    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
	    set_flash_message :notice, :destroyed if is_navigational_format?
	    respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name)       }
	  end

	  protected 

	  def authenticate_scope!
	    send(:"authenticate_#{resource_name}!", :force => true)
	    self.resource = send(:"current_#{resource_name}")
	  end


	private

	  	def configure_permitted_parameters
		    devise_parameter_sanitizer.for(:sign_up) << :name << :avatar << :role 
		    devise_parameter_sanitizer.for(:account_update) do |u|
		      u.permit(:name, :role, :avatar, :phone, :celphone, :address, :city, :estate, :postal, :company, :web, :date, :updated, :email, :password, :current_password)
		    end
		  end
end