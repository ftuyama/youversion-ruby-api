Dir[File.join(File.expand_path('endpoint', __dir__), '*.rb')].each { |file| require file }

module YouVersion
  module Endpoint
    include Bible
    include Moments
    include Notifications
    include Users
  end
end
