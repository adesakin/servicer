require "minitest/autorun"
require_relative '../nip.rb'
require "savon/mock/spec_helper"
# set Savon in and out of mock mode


class NIPTest < Minitest::Test
  include Savon::SpecHelper
  def test_nip_payment_is_successful
    test_object = NIPService.new
    # response = test_object.get_credit_history
    assert test_object.nip_payment != nil
  end

  def test_gtb_transfer_is_successful
    test_object =NIPService.new
    # response = test_object.get_credit_history
    assert test_object.gtb_transfer != nil
  end

  def test_nip_name_look_up_is_successful
    test_object = NIPService.new
    # response = test_object.get_credit_history
    assert test_object.nip_name_look_up != nil
  end

  def test_nip_payment_returns_a_fixture
      test_object = NIPService.new
      response = test_object.nip_payment
      assert response == "1000"
  end

  def test_gtb_transfer_returns_a_fixture
      test_object = NIPService.new
      response = test_object.gtb_transfer
      assert response == "1000"
  end

  def test_nip_name_look_up_returns_a_fixture
      test_object = NIPService.new
      response = test_object.nip_name_look_up
      assert response == "1000"
  end
end
