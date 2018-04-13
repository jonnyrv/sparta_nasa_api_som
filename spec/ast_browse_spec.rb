require 'spec_helper'

describe 'AsteroidBrowse' do
    contenxt 'requesting information on Asteroid Browse works correctly' do
        before(:all) do
            @asteroid_browse = Asteroids.new.asteroid_browse_service
        end


    end
end