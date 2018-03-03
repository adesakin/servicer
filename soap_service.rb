require 'savon'
require 'rest-client'
require 'json'
require 'nokogiri'
require 'active_support/core_ext/string/inflections'

class SoapService
  def initialize
    file = File.read('soap_params.json')
    @@soap_params = process_json(file)
  end


  def test_soap_operations
    @@soap_params.each do |param|
      url = param['url']
      # client = Savon.client(wsdl: url, pretty_print_xml: true, log: true, convert_request_keys_to: :camelcase)
      client = Savon.client(wsdl: url, convert_request_keys_to: :camelcase)
      operations = client.operations

      operations.each do |operation|
        message = param[operation.to_s.camelize]
        response = client.call(operation, message: message)

        puts "Response body #{response.body}"
        puts "Response XML #{response.to_xml}"

        # result = response.body["#{operation}_response".to_sym]["#{operation}_result".to_sym]
        # puts result
      end

    end
  end

  private
  def process_json(file)
    json = JSON.parse(file)
    result = []

    json.each do |data|
      keys = data.keys
      obj = {}

      keys.each do |key|
        unless key == 'url'
          obj.store(key.camelize, data[key])
        else
          obj.store(key, data[key])
        end
      end
      result.push(obj)
    end

    return result

  end

end