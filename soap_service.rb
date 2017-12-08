require "savon"
require "json"
require "active_support/core_ext/hash" #from_xml
require "nokogiri"

class SoapService
  def initialize(service_url, request_obj)
    @@client = Savon.client(wsdl: service_url)
    @@request_obj = request_obj
  end

  # Use the sample service method below to define a service operation.
  #
  def account_opening_bvn
    response = @@client.call(:account_opening_bvn, xml: @@request_obj)
    response.body[:account_opening_bvn_response][:account_opening_bvn_result][:response_code]
  end

  def account_opening_no_bvn
    response = @@client.call(:account_opening_no_bvn, xml: @@request_obj)
    response.body[:account_opening_no_bvn_response][:account_opening_no_bvn_result][:response_code]
  end

end
