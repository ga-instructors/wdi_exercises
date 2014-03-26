require 'sinatra'
require 'sinatra/reloader'

get '/calc_form' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  @operation = params[:operation]

  @result = case @operation
    when 'sum' then @first + @second
    when 'difference' then @first - @second
    when 'product' then @first * @second
    when 'quotient' then @first / @second.to_f
  end

  erb :calc_form
end

get '/calc/:first/:operation/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  @operation = params[:operation]

  @result = case @operation
    when 'sum' then @first + @second
    when 'difference' then @first - @second
    when 'product' then @first * @second
    when 'quotient' then @first / @second.to_f
  end

  erb :calc
end

get '/calc/multiply/:x/:y' do
  @result = params[:x].to_i * params[:y].to_i
  "#{@result}"
end

get '/calc/add/:x/:y' do
  @result = params[:x].to_i + params[:y].to_i
  "#{@result}"
end

# get '/calc/multiply/:x/:y' do
#   @result = params[:x].to_f * params[:y].to_f
#   erb :calc
# end

# get '/calc/add/:x/:y' do
#   @result = params[:x].to_f + params[:y].to_f
#   erb :calc
# end

get '/calc' do
  @first = params[:first].to_f
  @second = params[:second].to_f

  @result = case params[:operator]
  when '+' then @first + @second
  when '-' then @first - @second
  when '*' then @first * @second
  when '/' then @first / @second
  end

  erb :calc
end