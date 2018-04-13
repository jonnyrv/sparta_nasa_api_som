require_relative 'services/ast_browse'
require_relative 'services/ast_feed'
require_relative 'services/ast_lookup'

class Asteroids

    def asteroid_browse_service
        AstBrowseService.new
    end

    def asteroid_feed_service
        AstFeedService.new
    end

    def asteroid_lookup_service
        AstLookupService.new
    end



end
