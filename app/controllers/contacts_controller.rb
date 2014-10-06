class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver 
      redirect_to root_path(anchor: 'contact'), notice: 'Thank you for your message!'
    else
      redirect_to root_path(anchor: 'contact'), error: 'Cannot send message.'
    end
  end
end
