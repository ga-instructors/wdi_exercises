require 'bundler/setup'
Bundler.require(:default)

class Kitten 

	attr_reader :length, :width
	
	def initialize 
		@length = rand(100..500)
		@width = rand(100..500)
	end

end


get '/:num_kittens' do 
	num_kittens = params[:num_kittens].to_i
	@kittens = num_kittens.times.map {Kitten.new}
	erb :kittens
end