Poker::Application.routes.draw do
  get '/' => 'cards#deal'
end