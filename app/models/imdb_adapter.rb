class ImdbAdapter
  include HTTParty
  base_uri "http://www.theimdbapi.org/api"

  def search_by_title(title)
    response = self.class.get("/find/movie?title=#{title}")
    response.parsed_response.first['poster']
  # byebug
  end
end
