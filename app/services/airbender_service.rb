class AirbenderService
  def members_of_nation(nation)
    name = nation.split("_").first
    nation = nation.split("_").last
    
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    response = conn.get("/api/v1/characters?affiliation=#{name}+#{nation}")
    
    json = JSON.parse(response.body, symbolize_names: true)
  end
end