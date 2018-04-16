require 'spec_helper'

describe 'AsteroidBrowse' do
    context 'requesting information on Asteroid Browse works correctly' do
        before(:all) do
            @asteroid_browse = Asteroids.new.asteroid_browse_service
            @asteroid_browse.get_asteroid
        end

        it 'should have a links hash' do
            expect(@asteroid_browse.get_link_hash_from_body_response).to be_a(Hash)
        end

        it 'should have a next and self containing a string' do
            links = @asteroid_browse.get_link_hash_from_body_response
            links.each do | k, v |
                expect(v).to be_a(String)
            end
        end

        it 'should have a page hash' do
            expect(@asteroid_browse.get_page_hash_from_body_response).to be_a(Hash)
        end

        it 'should have a size, total_elements, total_pages and number containing a integer' do
            page = @asteroid_browse.get_page_hash_from_body_response
            page.each do | k, v |
                expect(v).to be_a(Integer)
            end
        end

        it 'should have a near_earth_objects array' do
            expect(@asteroid_browse.get_near_earth_from_body_response).to be_a(Array)
        end

        it 'should have a links hash inside near_earth_objects array' do
            expect(@asteroid_browse.get_links_from_near_earth).to be_a(Hash)
        end

        it 'should have a self containg a string' do
            expect(@asteroid_browse.get_self_from_body_response).to be_a(String)
        end
        it 'should have a neo_reference_id containing a string' do
            expect(@asteroid_browse.get_neo_ref_from_body_response).to be_a(String)
        end

        it 'should have a name containing a string' do
            expect(@asteroid_browse.get_name_from_body_response).to be_a(String)
        end

        it 'should have a nasa_jpl_url containing a string' do
            expect(@asteroid_browse.get_nasa_jpl_from_body_response).to be_a(String)
        end

        it 'should have a absolute_magnitude_h containing a float value' do
            expect(@asteroid_browse.get_absolute_mag_from_body_response).to be_a(Float)
        end

        it 'should have a estimated_diameter hash' do
            expect(@asteroid_browse.get_estimated_from_body_response).to be_a(Hash)
        end

        it 'should have a kilometers hash' do
            expect(@asteroid_browse.get_kilometers_from_body_response).to be_a(Hash)
        end

        it 'should have a meters hash' do
            expect(@asteroid_browse.get_meters_from_body_response).to be_a(Hash)
        end

        it 'should have a miles hash' do
            expect(@asteroid_browse.get_miles_from_body_response).to be_a(Hash)
        end

        it 'should have a feet hash' do
            expect(@asteroid_browse.get_feet_from_body_response).to be_a(Hash)
        end

        it 'should have a estimated_diameter_min and estimated_diameter_max both containig a float value' do
            kilo = @asteroid_browse.get_kilometers_from_body_response
            kilo.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have is_potentially_hazardous_asteroid as a false boolean' do
            expect(@asteroid_browse.get_potentially_from_body_response).to be false
        end

        it 'shoud have a close_approach_data as array' do
            expect(@asteroid_browse.get_close_from_body_response).to be_a(Array)
        end

        it 'should have a close_approach_date containing a string' do
            expect(@asteroid_browse.get_close_approach_from_body_response).to be_a(String)
        end

        it 'should have a epoch_date_close_approach containing a integer' do
            expect(@asteroid_browse.get_epoch_from_body_response).to be_a(Integer)
        end

        it 'should have a relative_velocity hash' do
            expect(@asteroid_browse.get_relative_vel_from_body_response).to be_a(Hash)
        end
        
        it 'should have a kilometers_per_second, kilometers_per_hour and miles_per_hour containig floats' do
            relative = @asteroid_browse.get_kilometers_from_body_response
            relative.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have a miss_distance hash' do
            expect(@asteroid_browse.get_miss_distance_from_body_response).to be_a(Hash)
        end

        it 'should have a astronomical, lunar, kilometers, miles all containing Float' do
            miss_distance = @asteroid_browse.get_kilometers_from_body_response
            miss_distance.each do | k, v |
                expect(v).to be_a(Float)
            end
        end

        it 'should have a orbiting_body containing a string ' do
            expect(@asteroid_browse.get_orbiting_from_body_response).to be_a(String)
        end

        it 'should have a orbital_data hash' do
            expect(@asteroid_browse.get_orbital_from_body_response).to be_a(Hash)
        end

        it 'should have 18 keys inside the oribital_data hash' do
            expect(@asteroid_browse.get_orbital_from_body_response.keys.count).to eq 18
        end

        it 'should have 18 keys containing strings' do
            orbital = @asteroid_browse.get_orbital_from_body_response
            orbital.each do | k, v |
                expect(v).to be_a(String)
            end
        end

    end
end