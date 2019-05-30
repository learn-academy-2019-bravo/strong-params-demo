class ContactsController < ApplicationController
    
    def new
        @contact = Contact.new
    end
    
    def create
        # Contact.create(info)
        @contact = Contact.create(contact_params)
    end
    
    private
    
    def contact_params
        params.require(:contact).permit(:name, :email, :phone)
    end
    
end