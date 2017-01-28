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
  end
end
