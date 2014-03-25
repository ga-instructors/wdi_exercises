Poker::Application.routes.draw do
  get '/' => 'cards#deal'
  get '/straight' => 'cards#straight'
  get '/flush' => 'cards#flush'
end