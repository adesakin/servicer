require "minitest/autorun"
require_relative '../balance_check.rb'
require "savon/mock/spec_helper"
# set Savon in and out of mock mode


class CreditRegistryTest < Minitest::Test
  include Savon::SpecHelper
  def test_get_account_balance_is_successful
    test_object = BalanceCheckService.new
    # response = test_object.get_credit_history
    assert test_object.get_account_balance != nil
  end

  def test_xml_returns_a_fixture
      # before(:all) { savon.mock!   }
      # after(:all)  { savon.unmock! }

      # savon.expects(:get_credit_history).with(xml: xml).returns(fixture)

      test_object = BalanceCheckService.new
      response = test_object.get_account_balance
      assert response == "1000"
  end
end
