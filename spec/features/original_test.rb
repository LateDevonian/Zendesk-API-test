#keep this as original test
require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://z3ntestframework.zendesk.com/api/v2/users.json")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Post.new(url)
request["Content-Type"] = 'application/json'
request["Authorization"] = 'Basic d29ya3Nob3BhZG1pbkBleGFtcGxlLmNvbTphZG1pbg=='
request.body = "{\n\t\"user\": \n\t\t{\n\t\t\t\"name\": \"ApJ\", \n\t\t\t\"email\": \"avrlj@example.org\"\n\t\t}\n\t}"

response = http.request(request)
puts response.read_body
