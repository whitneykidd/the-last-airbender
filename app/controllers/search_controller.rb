class SearchController < ApplicationController
  def index
    search_results = SearchResults.new
    @members = search_results.members(params[:nation])
    # name = params[:nation].split("_").first
    # nation = params[:nation].split("_").last
    
    # conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    # response = conn.get("/api/v1/characters?affiliation=#{name}+#{nation}")
    
    # json = JSON.parse(response.body, symbolize_names: true)
    # @members = json.map do |member_data|
    #   Member.new(member_data)
    # end
    # # binding.pry
  end
end