require "minitest/autorun"
require_relative '../soap_service.rb'
require_relative '../rest_service.rb'
require "savon/mock/spec_helper"
# set Savon in and out of mock mode


class SoapServiceTest < Minitest::Test
  include Savon::SpecHelper

  def test_soap
    puts "---------------------------------------------------"
    puts "-------------- Starting SOAP Test -----------------"

    soap_service = SoapService.new()
    soap_service.test_soap_operations

    puts "-------------- Ending SOAP Test -------------------"
    puts "---------------------------------------------------"
  end

  def test_rest
    puts "---------------------------------------------------"
    puts "------------- Starting REST Test ------------------"

    rest_service = RestService.new()
    rest_service.test_rest_operations

    puts "--------------- Ending REST Test ------------------"
    puts "---------------------------------------------------"
  end

end
