require "minitest/autorun"
require_relative '../credit_registry.rb'
require "savon/mock/spec_helper"
# set Savon in and out of mock mode


class CreditRegistryTest < Minitest::Test
  include Savon::SpecHelper
  def test_get_credit_history_is_successful
    test_object = CreditRegistryService.new
    # response = test_object.get_credit_history
    assert test_object.get_credit_history != nil
  end

  def test_xml_returns_a_fixture
      # before(:all) { savon.mock!   }
      # after(:all)  { savon.unmock! }
    xml = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/"><Body><GetCreditHistory xmlns="http://tempuri.org/"><BVN>11111111111</BVN></GetCreditHistory></Body></Envelope>'
    fixture = '<?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"><soap:Body><GetCreditHistoryResponse xmlns="http://tempuri.org/"><GetCreditHistoryResult><ResponseCode>1000</ResponseCode><ResponseDesc>&lt;Response&gt;&lt;Code&gt;0&lt;/Code&gt;&lt;Message&gt;Error Code 0. An error was encountered. Please contact CRC.&lt;/Message&gt;&lt;/Response&gt;</ResponseDesc></GetCreditHistoryResult></GetCreditHistoryResponse></soap:Body></soap:Envelope>'

      # savon.expects(:get_credit_history).with(xml: xml).returns(fixture)

      test_object = CreditRegistryService.new
      response = test_object.get_credit_history
      assert response == "1000"
  end
end
