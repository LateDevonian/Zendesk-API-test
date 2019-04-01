#require 'uri'
require 'json'
require_relative '../../spec/support/loadConfig'
require_relative '../../spec/fixtures/endpoints'
require_relative '../../spec/support/helper'
require_relative '../../spec/support/configClient'


api_client = configure_client

request = build_post_request(CREATE_USER)
request.body = "{\n\"user\": \n\t{\n\t\t\"name\": \"#{create_user_name}\", \n\t\t\"email\": \"#{create_user_email}\"\n\t}\n}\n"

response = api_client.request(request)
  if response.code != '201'
    raise "Invalid response code WRONGGGG!"
  end

puts response.read_body
#delete by using let and setting the variables in the Test
#create a framework for this
#zendesk api developer documentation do the same for a delete request
