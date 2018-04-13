require 'spec_helper'

describe 'AsteroidLookup' do
    contenxt 'requesting information on Asteroid Lookup works correctly' do
        before(:all) do
            @asteroid_lookup = Asteroids.new.asteroid_lookup_service
            @asteroid_lookup.get_asteroid(2000433)
        end


    end
end