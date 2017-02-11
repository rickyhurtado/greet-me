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

  test 'should create a contact' do
    assert_difference('Contact.count') do
      post admin_contacts_url, contact: { email: 'email@test.com', full_name: 'Firstname Lastname' }
    end

    assert_response 302
  end

  test 'should return error on contact creation' do
    post admin_contacts_url, contact: { email: '', full_name: 'Fullname Lastname' }
    assert_response 400

    post admin_contacts_url, contact: { email: 'email@test.com', full_name: '' }
    assert_response 400

    craig = contacts(:craig)

    post admin_contacts_url, contact: { email: craig.email, full_name: 'Fullname Lastname' }
    assert_response 400
  end
end
