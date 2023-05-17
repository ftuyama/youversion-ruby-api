module YouVersion
  module Endpoint
    module Moments

      # @option options [Object] :page
      #   This endpoint is paginated and requires page param
      def moments(options={})
        get("moments/items/#{@api_version}", options)
      end

      # @option options [Object] :id
      #   Id is required for this endpoint
      def user(options={})
        get("moment/view/#{@api_version}", options)
      end

    end
  end
end
