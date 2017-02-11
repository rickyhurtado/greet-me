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
        render :new, locals: { contact: contact }, status: 400
      end
    end

    def edit
      contact = Contact.where(id: params[:id])

      if contact.any?
        render locals: { contact: contact.first }
      else
        flash[:not_found] = 'Contact not found.'
        render file: 'public/404.html', status: :not_found, layout: false
      end
    end

    def update
      contact = Contact.find(params[:id])

      if contact.update(contact_params)
        flash[:success_message] = 'Contact has been updated.'
        redirect_to edit_admin_contact_url(contact)
      else
        flash.now[:error] = contact.errors
        render :edit, locals: { contact: contact }, status: 400
      end
    end

    private

      def contact_params
        params.require(:contact).permit(:email, :full_name)
      end
  end
end
