require 'httparty'
require 'json'

class AstFeedService
    include HTTParty

    base_uri 'https://api.nasa.gov/neo/rest/v1/'

    def initialize
        @api_key = 'okQctP46yz3VvHrYmjdS3wDfZOX1gi2EadBk8nCn'
    end

    def get_asteroid(start_date, end_date)
        @get_asteroid_data = JSON.parse(self.class.get("/feed?start_date=#{start_date}&end_date=#{end_date}&api_key=#{@api_key}").body)
    end
    
    def print_results
        puts JSON.pretty_generate(@get_asteroid_data).gsub(":", " =>")
    end

end

# abc = AstFeedService.new
# abc.get_asteroid('2018-04-12', '2018-04-13')
# abc.print_results