require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do 
	"Yes, this is the home page"
end

get '/hello' do 
	"hello Sinatra!"
end

get '/frank' do
	name = "Frank"
	"Hello #{name}"
end

get '/:name' do
	name = params[:name]
	"Hi there #{name}!"
end

get '/what/time/is/it/in/:number/hours' do
	number = params[:number].to_i
	time = Time.now + number * 3600
	"The time in #{number} hours will be #{time.strftime('%I:%M %p')}"
end