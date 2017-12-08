require "minitest/autorun"
require_relative '../soap_service.rb'
require "savon/mock/spec_helper"
# set Savon in and out of mock mode


class SoapServiceTest < Minitest::Test
  include Savon::SpecHelper

  def test_account_opening_bvn_is_successful(service_url, request_obj)
    test_object = SoapService.new(service_url, request_obj)
    # response = test_object.get_credit_history
    assert test_object.account_opening_bvn != nil
  end


  # def test_account_opening_bvn_is_successful
  #   test_object = AccountOpeningService.new
  #   # response = test_object.get_credit_history
  #   assert test_object.account_opening_bvn != nil
  # end

  # def test_account_opening_no_bvn_is_successful
  #   test_object = AccountOpeningService.new
  #   # response = test_object.get_credit_history
  #   assert test_object.account_opening_no_bvn != nil
  # end

  def test_account_opening_bvn_returns_a_fixture(service_url, request_obj)
    test_object = AccountOpeningService.new
    response = test_object.account_opening_bvn
    assert response == "1000"
  end unless Date.new > Date.new(2017,1,30)

end
