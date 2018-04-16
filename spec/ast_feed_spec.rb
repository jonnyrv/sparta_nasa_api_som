require 'spec_helper'

describe 'Asteroid Feed' do
    context 'requesting information on Asteroid Feed works correctly' do
        before(:all) do
            @asteroid_feed = Asteroids.new.asteroid_feed_service
            @asteroid_feed.get_asteroid('2018-04-12', '2018-04-13')
        end
        
        it 'should have a links hash' do
            expect(@asteroid_feed.get_link_hash_from_body_response).to be_a(Hash)
        end

        it 'should have 3 keys inside the links hash' do
            expect(@asteroid_feed.get_link_hash_from_body_response.keys.count).to eq 3
        end

        it 'should have a next, self and prev containing a string' do
            links = @asteroid_feed.get_link_hash_from_body_response
            links.each do | k, v |
                expect(v).to be_a(String)
            end
        end 

        it 'should have a element_count as a integer value' do
            expect(@asteroid_feed.get_element_count_from_body_response).to be_a(Integer)
        end

        it 'should have a near_earth_objects hash' do
            expect(@asteroid_feed.get_near_earth_from_body_response).to be_a(Hash)
        end

        it 'should have a date array inside near_earth_objects hash' do
            expect(@asteroid_feed.get_date_array_from_body_response).to be_a(Array)
        end

        it 'should have a links hash inside date array' do
            expect(@asteroid_feed.get_links_hash_from_response_body).to be_a(Hash)
        end

        it 'should have a self containg a string' do
            expect(@asteroid_feed.get_self_string_from_response_body).to be_a(String)
        end

        it 'should have a neo_reference_id containing a string' do
            expect(@asteroid_feed.get_neo_ref_from_body_response).to be_a(String)
        end

        it 'should have a name containing a string' do
            expect(@asteroid_feed.get_name_from_body_response).to be_a(String)
        end

        it 'should have a nasa_jpl_url containing a string' do
            expect(@asteroid_feed.get_nasa_jpl_from_body_response).to be_a(String)
        end

        it 'should have a absolute_magnitude_h containing a float value' do
            expect(@asteroid_feed.get_absolute_mag_from_body_response).to be_a(Float)
        end

        it 'should have a estimated_diameter hash' do
            expect(@asteroid_feed.get_estimated_from_body_response).to be_a(Hash)
        end

        it 'should have a kilometers hash' do
            expect(@asteroid_feed.get_kilometers_from_body_response).to be_a(Hash)
        end

        it 'should have a meters hash' do
            expect(@asteroid_feed.get_meters_from_body_response).to be_a(Hash)
        end

        it 'should have a miles hash' do
            expect(@asteroid_feed.get_miles_from_body_response).to be_a(Hash)
        end

        it 'should have a feet hash' do
            expect(@asteroid_feed.get_feet_from_body_response).to be_a(Hash)
        end

        it 'should have 2 keys inside the kilometers hash' do
            expect(@asteroid_feed.get_kilometers_from_body_response.keys.count).to eq 2
        end

        it 'should have a estimated_diameter_min and estimated_diameter_max both containig a float value' do
            kilo = @asteroid_feed.get_kilometers_from_body_response
            kilo.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have is_potentially_hazardous_asteroid as a true boolean' do
            expect(@asteroid_feed.get_potentially_from_body_response).to be true
        end

        it 'shoud have a close_approach_data as array' do
            expect(@asteroid_feed.get_close_from_body_response).to be_a(Array)
        end

        it 'should have a close_approach_date containing a string' do
            expect(@asteroid_feed.get_close_approach_from_body_response).to be_a(String)
        end

        it 'should have a epoch_date_close_approach containing a integer' do
            expect(@asteroid_feed.get_epoch_from_body_response).to be_a(Integer)
        end

        it 'should have a relative_velocity hash' do
            expect(@asteroid_feed.get_relative_vel_from_body_response).to be_a(Hash)
        end

        it 'should have 3 keys inside the velocity hash' do
            expect(@asteroid_feed.get_relative_vel_from_body_response.keys.count).to eq 3
        end
        
        it 'should have a kilometers_per_second, kilometers_per_hour and miles_per_hour containig strings' do
            relative = @asteroid_feed.get_kilometers_from_body_response
            relative.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have a miss_distance hash' do
            expect(@asteroid_feed.get_miss_distance_from_body_response).to be_a(Hash)
        end

        it 'should have 4 keys inside the miss_distance hash' do
            expect(@asteroid_feed.get_miss_distance_from_body_response.keys.count).to eq 4
        end

        it 'should have a astronomical, lunar, kilometers, miles all containing strings' do
            miss_distance = @asteroid_feed.get_kilometers_from_body_response
            miss_distance.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have a orbiting_body containing a string ' do
            expect(@asteroid_feed.get_orbiting_from_body_response).to be_a(String)
        end

    end
end