require 'net/http'
require 'json'

user = gets.chomp

response =  Net::HTTP.get_response(URI("https://api.github.com/users/#{user}/repos"))

# response =  Net::HTTP.get_response(URI("https://api.github.com/repos/#{user}/QuizApp/languages"))


user_array = JSON.parse(response.body)

repos = user_array.map{ |repo| repo["language"] }

puts repos