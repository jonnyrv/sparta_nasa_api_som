require 'httparty'
require 'json'

class AstBrowseService
    include HTTParty

    base_uri 'https://api.nasa.gov/neo/rest/v1/neo/browse/'

    def initialize
        @api_key = 'okQctP46yz3VvHrYmjdS3wDfZOX1gi2EadBk8nCn'
    end

    def get_asteroid 
        @get_asteroid_data = JSON.parse(self.class.get("?api_key=#{@api_key}").body)
    end
    
    def print_results
        puts JSON.pretty_generate(@get_asteroid_data).gsub(":", " =>")
    end

end

# ab = AstBrowseService.new
# ab.get_asteroid
# ab.print_results