require 'sinatra'
require 'pry'
get '/' do
    erb :menu
end
get '/command_line' do
    erb :command_line
end
get '/cp' do
    erb :cp
end
get '/ls' do
    erb :ls
end
get '/mkdir' do
    erb :mkdir
end
get '/touch' do
    erb :touch
end
get '/mv' do
    erb :mv
end
get '/search' do
    erb :search
end
post '/search' do
    @page = params[:page]
    @man = `man #{@page}`
    erb :result
end
not_found do
    status 404
    'not found'
end