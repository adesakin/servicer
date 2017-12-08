require "minitest/autorun"
require_relative '../bvn.rb'
require "savon/mock/spec_helper"
# set Savon in and out of mock mode


class BVNTest < Minitest::Test
  include Savon::SpecHelper
  def test_get_bvn_is_successful
    test_object = BVNService.new
    # response = test_object.get_credit_history
    assert test_object.get_bvn != nil
  end

  def test_bvn_linking_is_successful
    test_object = BVNService.new
    # response = test_object.get_credit_history
    assert test_object.bvn_linking != nil
  end

  def test_validate_bvn_is_successful
    test_object = BVNService.new
    # response = test_object.get_credit_history
    assert test_object.validate_bvn != nil
  end

  def test_get_bvn_returns_a_fixture
      test_object = BVNService.new
      response = test_object.get_bvn
      assert response == "Your BVN will be sent to your mobile Number"
  end

  def test_bvn_linking_returns_a_fixture
      test_object = BVNService.new
      response = test_object.bvn_linking
      assert response == "1000"
  end

  def test_validate_bvn_returns_a_fixture
      test_object = BVNService.new
      response = test_object.validate_bvn
      assert response == "Your request is processing"
  end
end
