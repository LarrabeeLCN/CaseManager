class ScansController < ApplicationController

	def new
		@case = Case.find(params[:case_id])
		@protocols = Protocol.all
	end

	def create
		@case  = Case.find(params[:case_id])
		@scan = @case.scans.create(scan_params)
		redirect_to home_index_url
	end

	private
		def scan_params
			params.require(:scan).permit(:path, :scandate, :protocol_id)
		end
	

end
