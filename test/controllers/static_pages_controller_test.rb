require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get the home page' do
    get root_url
  end

  test 'should get the about page' do
    get about_this_app_url
  end
end
