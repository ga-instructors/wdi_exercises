require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'


get '/' do
	erb :index
end

get "/input" do
	@input = params[:input]
	@symbol = "#{@input}".upcase
	@quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].dayHigh
	erb :symbol
end	
