require 'net/http'
require 'json'

user = gets.chomp

response =  Net::HTTP.get_response(URI("https://api.github.com/users/#{user}/repos"))

user_array = JSON.parse(response.body)

repos = user_array.map{ |repo| repo["name"] }

languages_array = []

repos.each do |repo|
	repo_languages =  Net::HTTP.get_response(URI("https://api.github.com/repos/kunks001/#{repo}/languages"))
	repo_languages_hash = JSON.parse(repo_languages.body)

	languages_array << repo_languages_hash
end

puts languages_array

response = Net::HTTP.get_response(URI("https://api.github.com/users/#{user}/repos"))
repos = JSON.parse(response.body)
languages = repos.map {|repo| repo["language"] }.group_by{|lang| lang}.max_by{|lang| lang.last.length}[0]
puts languages