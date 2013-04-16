class ContactsController < ApplicationController

def new
	@contact = Contact.new
end

def create
	@contact = Contact.new(params[:contact])
	if @contact.save
		flash[:success] = "thanks! you're all set."
		redirect_to '/'
		@contact = Contact.new	
		#render 'home'
	else
		flash[:error] = "whoops, there was a problem - probably with your provided email. please try again."
		redirect_to '/'
	end
end

def home
	@contact = Contact.new	
end

end
