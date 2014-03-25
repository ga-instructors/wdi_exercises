class ImagesController < ApplicationController 

	def spec_image 

	end

	def show_image 
		# Isaac's solution
		@width = params[:width]    || 200
		@height = params[:height]  || 200
		@tag = params[:tag] || "sun"
	end

end