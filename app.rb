require 'sinatra'

get '/' do
    erb :index
end

get '/love' do
    erb :love
end


get '/:name' do

    "Hello #{params[:name].capitalize}!"
end

get '/:name1/:name2/love' do

	@name1 = params[:name1].capitalize!
	@name2 = params[:name2].capitalize!
    erb :love

end

get '/:name1/:name2/hearts' do

	@name1 = params[:name1].capitalize!
	@name2 = params[:name2].capitalize!
    erb :hearts

end

get '/:name/duck' do

	@name = params[:name].capitalize!
    erb :duck

end

