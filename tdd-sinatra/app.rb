require "haml"
require 'pstore'
require_relative "../tdd-ruby/lib/team.rb"
require_relative "../tdd-ruby/lib/competition.rb"

class App < Sinatra::Base

	get "/" do
		"Hello World"
	end
	
	private

	def load_db
		@db = PStore.new "store"

		@db.transaction do
			@db[:competitions] ||= [
				Competition.new,
				Competition.new(["Question 1"])
			]
		end
	end

end