require "minitest/autorun"
require_relative '../soap_service.rb'
require "savon/mock/spec_helper"
# set Savon in and out of mock mode


class SoapServiceTest < Minitest::Test
  include Savon::SpecHelper

  URL_ACCOUNT_OPENING = "https://apidev.gtbank.com/APIManager/AccountOpening/service.asmx?wsdl"
  OBJ_ACCOUNT_OPENING = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/"><Body><AccountOpeningBVN xmlns="http://tempuri.org/"><!-- Optional --><request><Amount xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">1000</Amount><BVN xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">12112132456</BVN><DateOfBirth xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">1999-05-30T09:00:00</DateOfBirth><Email xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">e@e.com</Email><FirstName xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">test</FirstName><Gender xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">male</Gender><LastName xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">test</LastName><MobNum xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">08112312231</MobNum><MobileNumber xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">08112312231</MobileNumber><Pin xmlns="http://schemas.datacontract.org/2004/07/ChatBotService"></Pin><RequestType xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">1</RequestType><UserId xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">12121212</UserId><branchCode xmlns="http://schemas.datacontract.org/2004/07/ChatBotService">205</branchCode><hash xmlns="http://schemas.datacontract.org/2004/07/ChatBotService"></hash><otp xmlns="http://schemas.datacontract.org/2004/07/ChatBotService"></otp></request></AccountOpeningBVN></Body></Envelope>'
  OBJ_ACCOUNT_OPENING_NO_BVN = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/"><Body><AccountOpeningNoBVN xmlns="http://tempuri.org/"><!-- Optional --><request><UserId>1212142</UserId><hash></hash><FirstName>test</FirstName><LastName>test</LastName><DateOfBirth>1999-05-30T09:00:00</DateOfBirth><Gender>male</Gender><MobileNumber>08182906654</MobileNumber><Email>e@e.com</Email><Pin></Pin><BVN></BVN><otp></otp><Amount>1000</Amount><RequestType>1</RequestType><MobNum>08163686654</MobNum><branchCode>205</branchCode></request></AccountOpeningNoBVN></Body></Envelope>'

  def test_account_opening_bvn_is_successful(service_url = URL_ACCOUNT_OPENING, request_obj = OBJ_ACCOUNT_OPENING)    
    test_object = SoapService.new(service_url, request_obj)
    assert test_object.account_opening_bvn != nil
  end

  def test_account_opening_no_bvn_is_successful(service_url = URL_ACCOUNT_OPENING, request_obj = OBJ_ACCOUNT_OPENING_NO_BVN)
    test_object = SoapService.new(service_url, request_obj)
    assert test_object.account_opening_bvn != nil
  end

  def test_account_opening_bvn_returns_a_fixture(service_url = URL_ACCOUNT_OPENING, request_obj = OBJ_ACCOUNT_OPENING)
    test_object = SoapService.new(service_url, request_obj)
    response = test_object.account_opening_bvn
    assert response == "1000"
  end

  # EXAMPLE SKIPPING A TEST METHOD BASED ON DATE
  # def test_account_opening_bvn_returns_a_fixture(service_url, request_obj)
  #   test_object = SoapService.new(URL_ACCOUNT_OPENING, OBJ_ACCOUNT_OPENING)
  #   response = test_object.account_opening_bvn
  #   assert response == "1000"
  # end unless Date.new > Date.new(2017,1,30)

end
