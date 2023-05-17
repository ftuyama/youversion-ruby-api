module YouVersion
  module Endpoint
    module Friendships

      # @option options [Object] :page
      #   This endpoint is paginated and requires page param
      def incoming_friendships(options={})
        get("friendships/incoming/#{@api_version}", options)
      end

    end
  end
end
