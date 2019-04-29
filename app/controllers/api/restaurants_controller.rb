class Api::RestaurantsController < ApplicationController
require 'HTTParty'
require "json"
require "http"

  def index

    api_key = ENV["API_KEY"]


    # Constants, do not change these
    api_host = "https://api.yelp.com"
    search_path = "/v3/businesses/search"
    business_path = "/v3/businesses/"  # trailing / because we append the business id to the path


    default_business_id = "yelp-san-francisco"
    default_term = "dinner"
    default_location = "San Francisco, CA"
    search_limit = 5


    
    # def search(term, location)
      url = "#{api_host}#{search_path}"
      params = {
        term: "vegan",
        location: "chicago",
        limit: search_limit
      }

      response = HTTP.auth("Bearer #{api_key}").get(url, params: params)
      p response.parse
    # end
      render json: response.parse
# p search("vegan", "chicago")
  end


  def show
    # @restaurants = Restaurant.all
    
    api_key = ENV["API_KEY"]

# Constants, do not change these:
    api_host = "https://api.yelp.com"
    search_path = "/v3/businesses/search"
    business_path = "/v3/businesses/"  # trailing / because we append the business id to the path


    default_business_id = "yelp-chicago"
    default_term = "vegan"
    default_location = "Chicago, IL"
    search_limit = 10

    business_id = params[:id]
    url = "https://api.yelp.com/v3/businesses/#{business_id}"

    response = HTTP.auth("Bearer #{api_key}").get(url)
    render json: response.parse
   
    # end

    # render 'index.json.jbuilder'
     # business("TqyssEJOYHG2tWCheOVWeQ")
  end
end


  # def show
  #   @restaurant = Restaurant.find(params[:id])
  #   render 'show.json.jbuilder'
  # end
# response = HTTParty.get('http://vegguide.com', format: :plain)
  
#   API_KEY = "nC3qMyiXVVa1DitIJvZ-1s1pRjHoSuySGp69VOk8t5l8f4b-jl0zNfxVybJQQfmXiOf0x3W4yfbi_lvk2JbmmsBG5OYKA-sPE81Mxmbodn6cgRrlJ_zJAzRAx-qlXHYx"


# # Constants, do not change these
# API_HOST = "https://api.yelp.com"
# SEARCH_PATH = "/v3/businesses/search"
# BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path


# DEFAULT_BUSINESS_ID = "yelp-chicago"
# DEFAULT_TERM = "vegan"
# DEFAULT_LOCATION = "Chicago, IL"
# SEARCH_LIMIT = 10

# def business(business_id)
#   url = "#{API_HOST}#{BUSINESS_PATH}#{business_id}"

#   response = HTTP.auth("Bearer #{API_KEY}").get(url)
#   response.parse
# end

# p business("TqyssEJOYHG2tWCheOVWeQ")
# end
