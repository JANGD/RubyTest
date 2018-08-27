require 'net/https'
require 'uri'
require 'json'


class Model
  attr_accessor :status
  attr_accessor :id
  attr_accessor :errorDetails
  def initialize(model)
    @status = model['status']
    @id = model['id']
    @errorDetails = model['errorDetails']
  end
end

class Tools

  def test_url(str)
    headers = {}

    uri = URI(str)
    res = Net::HTTP.new(uri.host, uri.port)
    puts res.address
    puts uri.host
    puts uri.port
    code = res.head(uri.request_uri, headers).code.to_i
    res.use_ssl = true
    if code == 400 then
      res.get(uri.request_uri, headers) do |chunk|
        json_object = JSON.parse(chunk)
        model = Model.new(json_object)
        puts model.id + ' '+ model.errorDetails + ' ' + model.status
        puts model
        puts chunk
      end
    end
  end
end



