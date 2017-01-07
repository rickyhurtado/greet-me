require 'test_helper'

class InterestTest < ActiveSupport::TestCase
  test '.contact get the contact of selected interest' do
    craig = contacts(:craig)
    mirinda = contacts(:mirinda)
    craig_run = interests(:craig_run)
    assert_equal craig, craig_run.contact
    refute_equal mirinda, craig_run.contact
  end
end
