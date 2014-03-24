class ComplaintsController < ApplicationController

	def index
		# @complaints = Complaint.all
		sort_by = params[:sort_by] || 'id'
		@complaints = Complaint.order(sort_by)

	end

end
