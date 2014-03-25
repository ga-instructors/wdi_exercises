require 'sinatra'
require 'sinatra/reloader'
require 'faker'
require_relative 'person'

get '/' do
  @person_array = []
  1000.times do 
  @person_array << Person.new
  end
    erb :index
end