require 'sinatra'
require 'net/http'
require 'json'

class Server < Sinatra::Base



end


	# def get_user
	# 	@user = gets.chomp
	# end

	# def get_user_repos(user=@user)
	# 	response = Net::HTTP.get_response(URI("https://api.github.com/users/#{user}/repos"))
	# 	JSON.parse(response.body)
	# end

	# def get_main_repo_languages
	# 	get_user_repos.map{ |repo| repo["language"] }
	# end

	# def get_repo_names
	# 	get_user_repos.map{ |repo| repo["name"] }
	# end

	# def get_repo_language_breakdown(@user, repo)
	# 	repo_languages =  Net::HTTP.get_response(URI("https://api.github.com/repos/#{user}/#{repo}/languages"))
	# 	JSON.parse(repo_languages.body)
	# end

	# def return_repo_language_breakdown(user=@user, repo)
	# 	languages_array = []
	# 	repos.each { |repo| languages_array << get_repo_language_breakdown(user, repo) }
	# 	languages_array
	# end

# user = gets.chomp

# response =  Net::HTTP.get_response(URI("https://api.github.com/users/#{user}/repos"))

# user_array = JSON.parse(response.body)

# repos = user_array.map{ |repo| repo["name"] }

# languages_array = []

# repos.each do |repo|
# 	repo_languages =  Net::HTTP.get_response(URI("https://api.github.com/repos/kunks001/#{repo}/languages"))
# 	repo_languages_hash = JSON.parse(repo_languages.body)

# 	languages_array << repo_languages_hash
# end

# puts languages_array
