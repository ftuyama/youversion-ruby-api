require_relative "youversion/error"
require_relative "youversion/configuration"
require_relative "youversion/api"
require_relative "youversion/client"
require_relative "youversion/version"

module YouVersion
  extend Configuration

  # Alias for YouVersion::Client.new
  #
  # @return [YouVersion::Client]
  def self.client(options={})
    YouVersion::Client.new(options)
  end

  # Delegate to YouVersion::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  # Delegate to YouVersion::Client
  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end
end
