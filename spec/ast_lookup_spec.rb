require 'spec_helper'

describe 'AsteroidLookup' do
    context 'requesting information on Asteroid Lookup works correctly' do
        before(:all) do
            @asteroid_lookup = Asteroids.new.asteroid_lookup_service
            @asteroid_lookup.get_asteroid(2000433)
        end

        it 'should have a links hash' do
            expect(@asteroid_lookup.get_link_hash_from_body_response).to be_a(Hash)
        end

        it 'should have a self containing a string' do
            expect(@asteroid_lookup.get_self_string_from_body_response).to be_a(String)
        end

        it 'should have a neo_reference_id containing a string' do
            expect(@asteroid_lookup.get_neo_ref_from_body_response).to be_a(String)
        end

        it 'should have a name containing a string' do
            expect(@asteroid_lookup.get_name_from_body_response).to be_a(String)
        end

        it 'should have a nasa_jpl_url containing a string' do
            expect(@asteroid_lookup.get_nasa_jpl_from_body_response).to be_a(String)
        end

        it 'should have a absolute_magnitude_h containing a float value' do
            expect(@asteroid_lookup.get_absolute_mag_from_body_response).to be_a(Float)
        end

        it 'should have a estimated_diameter hash' do
            expect(@asteroid_lookup.get_estimated_from_body_response).to be_a(Hash)
        end

        it 'should have a kilometers hash' do
            expect(@asteroid_lookup.get_kilometers_from_body_response).to be_a(Hash)
        end

        it 'should have a meters hash' do
            expect(@asteroid_lookup.get_meters_from_body_response).to be_a(Hash)
        end

        it 'should have a miles hash' do
            expect(@asteroid_lookup.get_miles_from_body_response).to be_a(Hash)
        end

        it 'should have a feet hash' do
            expect(@asteroid_lookup.get_feet_from_body_response).to be_a(Hash)
        end

        it 'should have a estimated_diameter_min and estimated_diameter_max both containig a float value' do
            kilo = @asteroid_lookup.get_kilometers_from_body_response
            kilo.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have is_potentially_hazardous_asteroid as a false boolean' do
            expect(@asteroid_lookup.get_potentially_from_body_response).to be false
        end

        it 'shoud have a close_approach_data as array' do
            expect(@asteroid_lookup.get_close_from_body_response).to be_a(Array)
        end

        it 'should have a close_approach_date containing a string' do
            expect(@asteroid_lookup.get_close_approach_from_body_response).to be_a(String)
        end

        it 'should have a epoch_date_close_approach containing a integer' do
            expect(@asteroid_lookup.get_epoch_from_body_response).to be_a(Integer)
        end

        it 'should have a relative_velocity hash' do
            expect(@asteroid_lookup.get_relative_vel_from_body_response).to be_a(Hash)
        end

        it 'should have 4 keys inside the relative_velocity hash' do
            expect(@asteroid_lookup.get_relative_vel_from_body_response.keys.count).to eq 3
        end
        
        it 'should have a kilometers_per_second, kilometers_per_hour and miles_per_hour containig strings' do
            relative = @asteroid_lookup.get_kilometers_from_body_response
            relative.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have a miss_distance hash' do
            expect(@asteroid_lookup.get_miss_distance_from_body_response).to be_a(Hash)
        end

        it 'should have 4 keys inside the miss_distance hash' do
            expect(@asteroid_lookup.get_miss_distance_from_body_response.keys.count).to eq 4
        end

        it 'should have a astronomical, lunar, kilometers, miles all containing strings' do
            miss_distance = @asteroid_lookup.get_kilometers_from_body_response
            miss_distance.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have a orbiting_body containing a string ' do
            expect(@asteroid_lookup.get_orbiting_from_body_response).to be_a(String)
        end

        it 'should have a orbital_data hash' do
            expect(@asteroid_lookup.get_orbital_from_body_response).to be_a(Hash)
        end

        it 'should have a orbit_id containig a string' do
            expect(@asteroid_lookup.get_orbit_id_from_body_response).to be_a(String)
        end

        it 'should have a orbit_determination_date containig a string' do
            expect(@asteroid_lookup.get_orbit_deter_from_body_response).to be_a(String)
        end

        it 'should have a orbit_uncertainty containig a string' do
            expect(@asteroid_lookup.get_orbit_uncer_from_body_response).to be_a(String)
        end

        it 'should have a minimum_orbit_intersection containig a string' do
            expect(@asteroid_lookup.get_minimum_orbit_from_body_response).to be_a(String)
        end

        it 'should have a jupiter_tisserand_invariant containig a string' do
            expect(@asteroid_lookup.get_jupiter_tisserand_from_body_response).to be_a(String)
        end

        it 'should have a epoch_osculation containig a string' do
            expect(@asteroid_lookup.get_epoch_osculation_from_body_response).to be_a(String)
        end

        it 'should have a eccentricity containig a string' do
            expect(@asteroid_lookup.get_eccentricity_from_body_response).to be_a(String)
        end

        it 'should have a semi_major_axis containig a string' do
            expect(@asteroid_lookup.get_semi_major_from_body_response).to be_a(String)
        end

        it 'should have a inclination containig a string' do
            expect(@asteroid_lookup.get_inclination_from_body_response).to be_a(String)
        end

        it 'should have a ascending_node_longitude containig a string' do
            expect(@asteroid_lookup.get_ascending_from_body_response).to be_a(String)
        end

        it 'should have a orbital_period containig a string' do
            expect(@asteroid_lookup.get_orbital_period_from_body_response).to be_a(String)
            
        end

        it 'should have a perihelion_distance containig a string' do
            expect(@asteroid_lookup.get_perihelion_from_body_response).to be_a(String)
            
        end

        it 'should have a perihelion_argument containig a string' do
            expect(@asteroid_lookup.get_perihelion_argument_from_body_response).to be_a(String)
            
        end

        it 'should have a aphelion_distance containig a string' do
            expect(@asteroid_lookup.get_aphelion_from_body_response).to be_a(String)
            
        end

        it 'should have a perihelion_time containig a string' do
            expect(@asteroid_lookup.get_perihelion_time_from_body_response).to be_a(String)
            
        end

        it 'should have a mean_anomaly containig a string' do
            expect(@asteroid_lookup.get_mean_anomaly_from_body_response).to be_a(String)
            
        end

        it 'should have a mean_motion containig a string' do
            expect(@asteroid_lookup.get_mean_motion_from_body_response).to be_a(String)
            
        end

        it 'should have a equinox containig a string' do
            expect(@asteroid_lookup.get_equinox_from_body_response).to be_a(String)
            
        end

    end
end