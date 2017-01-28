require 'test_helper'

class Admin::ContactsControllerTest < ActionDispatch::IntegrationTest
  test 'should get the admin contacts page' do
    get admin_contacts_url
    assert_response 200
  end

  test 'should get the admin new contact page' do
    get new_admin_contact_url
    assert_response 200
  end
end
