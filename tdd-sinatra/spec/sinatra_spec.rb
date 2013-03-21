$:.unshift(File.dirname(__FILE__)+ "../../")

require 'sinatra'
require 'app'
require 'rack/test'

set :environment, :test

describe App do
	include Rack::Test::Methods
	def app
		App		
	end

	describe "First test with Sinatra" do
		it "says hello world" do
			get "/"
			last_response.status.should == 200
			last_response.body.should =~ /Hello World/
		end
	end

	describe "Teams"

	describe "a competition" do
		context "with no questions" do
			let(:params) { }

			it "won't allow teams to enter"
		end

		context "with questions" do
			let(:params) { }

			it "won't allow teams to enter"
		end
	end
end