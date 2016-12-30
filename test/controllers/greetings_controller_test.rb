require 'test_helper'

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get the about greetings page' do
    get greetings_url
    assert_response 200
  end

  test 'should get the greet me page' do
    greet_me_params = { greet_me: 'morning' }

    get greet_me_url(greet_me_params)
    assert_response 200
  end
end
