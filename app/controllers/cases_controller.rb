class CasesController < ApplicationController
	
	def index
		@cases = Case.all
	end

	def show
		@case = Case.find(params[:id])
	end


	def new
		@case = Case.new
	end

	def edit
		@case = Case.find(params[:id])
	end

	def create
		#render plain: params[:case].inspect
	
		@case = Case.new(case_params)


		if @case.save
			redirect_to @case
		else
			render 'new'
		end

	end

	def update
		@case = Case.find(params[:id])

		if @case.update(case_params)
			redirect_to @case
		else
			render 'edit'
		end
	end

	def destroy
		
	end

	private
	
	def case_params
		params.require(:case).permit(:caseid, :hemi, :age, :blocked)
	end

end
