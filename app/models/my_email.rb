class MyEmail < ActiveRecord::Base

	validates_presence_of :email, message: "Es necesario Ingresar una direccion de correo electronica"
	validates_uniqueness_of :email, message: "El correo electronico ya se encuentra en uso"

	validates_format_of :email, with: Devise::email_regexp
end
