module YouVersion
  module Endpoint
    module Users

      # @option options [Object] :page
      #   This endpoint is paginated and requires page param
      def users(options={})
        get("users/items/#{@api_version}", options)
      end

      # @option options [Object] :id
      #   Id is required for this endpoint
      def user(options={})
        get("users/view/#{@api_version}", options)
      end

    end
  end
end
