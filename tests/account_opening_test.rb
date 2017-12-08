require "minitest/autorun"
require_relative '../account_opening.rb'
require "savon/mock/spec_helper"
# set Savon in and out of mock mode


class AccountOpeningTest < Minitest::Test
  include Savon::SpecHelper
  def test_account_opening_bvn_is_successful
    test_object = AccountOpeningService.new
    # response = test_object.get_credit_history
    assert test_object.account_opening_bvn != nil
  end

  # def test_account_opening_no_bvn_is_successful
  #   test_object = AccountOpeningService.new
  #   # response = test_object.get_credit_history
  #   assert test_object.account_opening_no_bvn != nil
  # end

  def test_account_opening_bvn_returns_a_fixture
    if Date.new > Date.new(2017,1,30)
      skip "Not yet time"
    end
      test_object = AccountOpeningService.new
      response = test_object.account_opening_bvn
      assert response == "1000"
  end

  # def test_gaccount_opening_no_bvn_returns_a_fixture
  #     test_object = AccountOpeningService.new
  #     response = test_object.gtb_transfer
  #     assert response == "1000"
  #end
end
