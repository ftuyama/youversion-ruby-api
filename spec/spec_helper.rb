require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start do
  add_filter '.bundle/'
end

require 'youversion'
require 'webmock/rspec'
require 'vcr'
WebMock.disable_net_connect!(allow_localhost: true)

# this helper is not good
module Helpers
  def valid_token
    $stderr.puts "Please set valid_token to ENV['TOKEN']" if ENV['TOKEN'].nil?
    @token ||= ENV['TOKEN'] || (print "Token: "; gets.strip)
  end

  def valid_client
    @valid_client ||= YouVersion::Client.new(token: valid_token)
  end

  def valid_response
    include({ "abbreviation" => 'NTLH' })
  end
end

include Helpers
RSpec.configure do |config|
  config.run_all_when_everything_filtered = true

  config.order = 'random'
  config.include Helpers
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr'
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = true
  c.default_cassette_options = { :record => :new_episodes }
  c.configure_rspec_metadata!
  c.filter_sensitive_data("<TOKEN>") { valid_token }
end
