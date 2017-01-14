module Admin
  class ContactsController < ApplicationController
    def index
      contacts = Contact.all

      render locals: { contacts: contacts }
    end
  end
end
