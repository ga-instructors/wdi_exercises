class SubwayLinesController < ApplicationController 

	def index 
		@subway_lines = SubwayLine.all
	end

	def show 
		@subway_line = SubwayLine.find(params[:id])
	end

end