module Admin::ContactsHelper
  def display_contact_list(contacts)
    haml_tag :ol do
      contact_list(contacts)
    end
  end

  def contact_list(contacts)
    contacts.each do |contact|
      haml_tag :li do
        haml_tag :a, contact.full_name, href: url_for(admin_contact_url(contact.id))
      end
    end
  end
end
