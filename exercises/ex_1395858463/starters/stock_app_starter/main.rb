require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].dayHigh

end

