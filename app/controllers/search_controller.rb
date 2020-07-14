class SearchController < ApplicationController
  def index
    # binding.pry
    name = params[:nation].split("_").first
    name = params[:nation].split("_").last
    
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    response = conn.get("/api/v1/characters?affiliation=#{name}+#{nation}")
    
    json = JSON.parse(response.body, symbolize_names: true)
    @members = json[:results]
  end
end