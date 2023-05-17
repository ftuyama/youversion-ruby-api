require 'bundler/setup'
require "youversion"
require "pry"

token = ENV["TOKEN"] || (print "Token: "; gets.strip)
language = ENV["LANGUAGE"] || (print "Language: "; gets.strip)
client = YouVersion::Client.new token: token, language: language

puts "Get bible"
puts client.bible({"id" => 211}).slice("title", "abbreviation")

puts "Get notifications"
client.notifications["items"].first(5).each do |notification|
  title = notification.dig('base', 'title', 'l_args') || {}
  puts "#{notification['created_dt']} : #{title['title'] || title['reference_human']} - #{title['name']}"
end

puts "Get user"
puts client.user({"user" => "185479283"}).slice("username", "name", "country")

puts "Get moments"
client.moments({"page" => 1})["moments"].first(5).each do |moment|
  title = moment.dig('base', 'title', 'l_args') || {}
  puts "#{moment['created_dt']} : #{title['title'] || title['reference_human']} - #{title['name']}"
end
