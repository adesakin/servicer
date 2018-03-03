require 'rest-client'
require 'json'
require 'nokogiri'

class RestService
  def initialize
    file = File.read('rest_params.json')
    @@rest_params = JSON.parse(file)
  end

  def test_rest_operations
    @@rest_params.each do |param|
      url = param['url']
      operations = param['operations']


      operations.each do |operation|
        full_url = url + operation['path']
        method = operation['method'].upcase
        params = operation['params']
        response = nil

        case method
            when "GET"
                response = get(full_url, params)
            when "POST"
                response = post(full_url, params)
            when "PUT"
                response = put(full_url, params)
            when "DELETE"
                response = delete(full_url, params)
            else
                puts "Invalid method specified"
        end

        puts "Response Code: #{response.code}"

      end

    end
  end

  private

  def get(path, params={})

    response = RestClient.get(path, params)

    return response

  end

  def post(path, params={})

    # response = RestClient.post(path, params)

    return "POST: Work in progress"

  end

  def put(path, params={})

    # response = RestClient.put(path, params)

    return "PUT: Work in progress"

  end

  def delete(path, params={})

    # response = RestClient.delete(path, params)

    return "DELETE: Work in progress"

  end

end