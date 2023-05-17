module YouVersion
  module Endpoint
    module Bible

      # @option options [Object] :id
      #   Id is required for this endpoint
      def bible(options={})
        get("bible/version/#{@api_version}", options)
      end

    end
  end
end
