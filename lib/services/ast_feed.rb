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

    def get_link_hash_from_body_response
        @get_asteroid_data['links']
    end

    def get_element_count_from_body_response
        @get_asteroid_data['element_count']
    end

    def get_near_earth_from_body_response
        @get_asteroid_data['near_earth_objects']
    end

    def get_date_array_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12']
    end

    def get_links_hash_from_response_body
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['links']
    end

    def get_self_string_from_response_body
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['links']['self']
    end

    def get_neo_ref_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['neo_reference_id']
    end

    def get_name_from_body_response 
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['name']
    end

    def get_nasa_jpl_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['nasa_jpl_url']
    end

    def get_absolute_mag_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['absolute_magnitude_h']
    end

    def get_estimated_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['estimated_diameter']
    end

    def get_kilometers_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['estimated_diameter']['kilometers']
    end

    def get_meters_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['estimated_diameter']['meters']
    end

    def get_miles_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['estimated_diameter']['miles']
    end

    def get_feet_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['estimated_diameter']['feet']
    end

    def get_potentially_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['is_potentially_hazardous_asteroid']
    end

    def get_close_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['close_approach_data']
    end

    def get_close_approach_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['close_approach_data'][0]['close_approach_date']
    end

    def get_epoch_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['close_approach_data'][0]['epoch_date_close_approach']
    end

    def get_relative_vel_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['close_approach_data'][0]['relative_velocity']
    end

    def get_miss_distance_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['close_approach_data'][0]['miss_distance']
    end

    def get_orbiting_from_body_response
        @get_asteroid_data['near_earth_objects']['2018-04-12'][0]['close_approach_data'][0]['orbiting_body']
    end
    
    def print_results
        puts JSON.pretty_generate(@get_asteroid_data).gsub(":", " =>")
    end

end
