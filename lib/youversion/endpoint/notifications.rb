module YouVersion
  module Endpoint
    module Notifications

      def notifications(options={})
        get("notifications/items/#{@api_version}", options)
      end

    end
  end
end
