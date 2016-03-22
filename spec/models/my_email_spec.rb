require 'rails_helper'

RSpec.describe MyEmail, type: :model do

	it{ should validate_presence_of(:email).with_message("Es necesario Ingresar una direccion de correo electronica") }

	it{ should validate_uniqueness_of(:email).with_message("El correo electronico ya se encuentra en uso")}

	it "should not create with invalidate email" do
		email = MyEmail.new(email:"eduardo")
		expect(email.valid?).to be_falsy
	end

	it "Should create a new email" do
		email = MyEmail.new()
		email.email = "eduardo78d@gmail.com"
		expect(email.valid?).to be_truthy
	end

end





















