require 'httparty'
# require 'rubygems'

# friday_jackson = FridayJackson.new

# class FridayJackson
#   include HTTP
#   base_uri "fridayjackson.com/"

#   def shows
#     self.class.get('/shows.json')
#   end
# end

# puts friday_jackson.shows
# p HTTP.get('https://www.fridayjackson.com/').to_s

# response = HTTP::Request.execute(
# method: :get,
# url: 'https://www.yelp.com',
# headers: {api_key: 'nC3qMyiXVVa1DitIJvZ-1s1pRjHoSuySGp69VOk8t5l8f4b-jl0zNfxVybJQQfmXiOf0x3W4yfbi_lvk2JbmmsBG5OYKA-sPE81Mxmbodn6cgRrlJ_zJAzRAx-qlXHYx'}
# )


url = 'https://api.yelp.com/search?cflt=restaurants&find_loc=Chicago%2C+IL'
headers= {api_key: 'nC3qMyiXVVa1DitIJvZ-1s1pRjHoSuySGp69VOk8t5l8f4b-jl0zNfxVybJQQfmXiOf0x3W4yfbi_lvk2JbmmsBG5OYKA-sPE81Mxmbodn6cgRrlJ_zJAzRAx-qlXHYx'}

response = HTTParty.get(url)
p response.parsed_response
