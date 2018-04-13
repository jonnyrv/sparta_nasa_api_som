require 'httparty'
require 'json'


class AstLookupService
    include HTTParty

    base_uri 'https://api.nasa.gov/neo/rest/v1/neo/'

    def initialize
        @api_key = 'okQctP46yz3VvHrYmjdS3wDfZOX1gi2EadBk8nCn'
    end

    def get_asteroid small_body_id
        @get_asteroid_data = JSON.parse(self.class.get("/#{small_body_id}?api_key=#{@api_key}").body)
    end
    
    def print_results
        puts JSON.pretty_generate(@get_asteroid_data).gsub(":", " =>")
    end

end

# ab = AstLookupService.new

# ab.get_asteroid 2000433
# ab.print_results