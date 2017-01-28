module Admin
  class ContactsController < ApplicationController
    def index
      contacts = Contact.all

      render locals: { contacts: contacts }
    end

    def new
      contact = Contact.new

      render locals: { contact: contact }
    end

    def create
      contact = Contact.new(contact_params)

      # See validations on person model
      if contact.save
        flash[:success_message] = "New contact has been created. <a href=\"#{ edit_admin_contact_url(contact)}\">View this contact.</a>"
        redirect_to new_admin_contact_url
      else
        flash.now[:error] = contact.errors
        render :new, locals: { contact: contact }
      end
    end

    private

      def contact_params
        params.require(:contact).permit(:email, :full_name)
      end
  end
end
