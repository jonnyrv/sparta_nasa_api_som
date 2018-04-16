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

    def get_link_hash_from_body_response
        @get_asteroid_data['links']
    end

    def get_self_string_from_body_response
        @get_asteroid_data['links']['self']
    end

    def get_neo_ref_from_body_response
        @get_asteroid_data['neo_reference_id']
    end

    def get_name_from_body_response 
        @get_asteroid_data['name']
    end

    def get_nasa_jpl_from_body_response
        @get_asteroid_data['nasa_jpl_url']
    end

    def get_absolute_mag_from_body_response
        @get_asteroid_data['absolute_magnitude_h']
    end

    def get_estimated_from_body_response
        @get_asteroid_data['estimated_diameter']
    end

    def get_kilometers_from_body_response
        @get_asteroid_data['estimated_diameter']['kilometers']
    end

    def get_meters_from_body_response
        @get_asteroid_data['estimated_diameter']['meters']
    end

    def get_miles_from_body_response
        @get_asteroid_data['estimated_diameter']['miles']
    end

    def get_feet_from_body_response
        @get_asteroid_data['estimated_diameter']['feet']
    end
    
    def get_potentially_from_body_response
        @get_asteroid_data['is_potentially_hazardous_asteroid']
    end

    def get_close_from_body_response
        @get_asteroid_data['close_approach_data']
    end

    def get_close_approach_from_body_response
        @get_asteroid_data['close_approach_data'][0]['close_approach_date']
    end

    def get_epoch_from_body_response
        @get_asteroid_data['close_approach_data'][0]['epoch_date_close_approach']
    end

    def get_relative_vel_from_body_response
        @get_asteroid_data['close_approach_data'][0]['relative_velocity']
    end

    def get_miss_distance_from_body_response
        @get_asteroid_data['close_approach_data'][0]['miss_distance']
    end

    def get_orbiting_from_body_response
        @get_asteroid_data['close_approach_data'][0]['orbiting_body']
    end

    def get_orbital_from_body_response
        @get_asteroid_data['orbital_data']
    end

    def get_orbit_id_from_body_response
        @get_asteroid_data['orbital_data']['orbit_id']
    end

    def get_orbit_deter_from_body_response
        @get_asteroid_data['orbital_data']['orbit_determination_date']
    end

    def get_orbit_uncer_from_body_response
        @get_asteroid_data['orbital_data']['orbit_uncertainty']
    end

    def get_minimum_orbit_from_body_response
        @get_asteroid_data['orbital_data']['minimum_orbit_intersection']
    end

    def get_jupiter_tisserand_from_body_response
        @get_asteroid_data['orbital_data']['jupiter_tisserand_invariant']
    end

    def get_epoch_osculation_from_body_response
        @get_asteroid_data['orbital_data']['epoch_osculation']
    end

    def get_eccentricity_from_body_response
        @get_asteroid_data['orbital_data']['eccentricity']
    end

    def get_semi_major_from_body_response
        @get_asteroid_data['orbital_data']['semi_major_axis']
    end

    def get_inclination_from_body_response
        @get_asteroid_data['orbital_data']['inclination']
    end

    def get_ascending_from_body_response
        @get_asteroid_data['orbital_data']['ascending_node_longitude']
    end

    def get_orbital_period_from_body_response
        @get_asteroid_data['orbital_data']['orbital_period']
    end

    def get_perihelion_from_body_response
        @get_asteroid_data['orbital_data']['perihelion_distance']
    end

    def get_perihelion_argument_from_body_response
        @get_asteroid_data['orbital_data']['perihelion_argument']
    end

    def get_aphelion_from_body_response
        @get_asteroid_data['orbital_data']['aphelion_distance']
    end

    def get_perihelion_time_from_body_response
        @get_asteroid_data['orbital_data']['perihelion_time']
    end

    def get_mean_anomaly_from_body_response
        @get_asteroid_data['orbital_data']['mean_anomaly']
    end

    def get_mean_motion_from_body_response
        @get_asteroid_data['orbital_data']['mean_motion']
    end

    def get_equinox_from_body_response
        @get_asteroid_data['orbital_data']['equinox']
    end

    def print_results
        puts JSON.pretty_generate(@get_asteroid_data).gsub(":", " =>")
    end

end

