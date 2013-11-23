require 'net/http'
require 'json'

user = gets.chomp

response =  Net::HTTP.get_response(URI("https://api.github.com/users/#{user}/repos"))

puts JSON.parse(response.body)
