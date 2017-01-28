module Admin::ContactsHelper
  def display_contact_list(contacts)
    haml_tag :ol do
      contact_list(contacts)
    end
  end

  def contact_list(contacts)
    contacts.each do |contact|
      haml_tag :li do
        haml_tag :a, href: url_for(edit_admin_contact_url(contact)) do
          haml_tag :span, contact.full_name
        end
      end
    end
  end
end
