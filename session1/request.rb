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
    code = res.head(uri.request_uri, headers).code.to_i
    head = uri.scheme
    puts head
    #need open ssl
    if head.equal?('https') {
      res.use_ssl = true
    }
    end

    if code == 400 then
      res.get(uri.request_uri, headers) do |chunk|
        # json_object = JSON.parse(chunk)
        # model = Model.new(json_object)
        # puts model.id + ' '+ model.errorDetails + ' ' + model.status
        # puts model
        # puts json_object
        file_manager = File.new('', 'r+')
        # file_manager.reopen(file_manager)
        file_manager.write(chunk)
        File.open(file_manager).each { |f|

        }
        puts chunk
      end
    end
  end
end

STDOUT.flush
url = gets.chomp
get_request_data = Tools.new
result = get_request_data.test_url(url)
puts result
#https://www.apiopen.top/satinApi?type=1&page=1 for test