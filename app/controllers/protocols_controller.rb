class ProtocolsController < ApplicationController

	def index
		@protocols = Protocol.all
	end

	def show
		@protocol = Protocol.find(params[:id])
	end

	def new
		@protocol = Protocol.new
	end

	def edit
		@protocol = Protocol.find(params[:id])
	end

	def create
		#render plain: params[:case].inspect
	
		@protocol = Protocol.new(protocol_params)


		if @protocol.save
			redirect_to @protocol
		else
			render 'new'
		end

	end

	def update
		@protocol = Protocol.find(params[:id])

		if @protocol.update(protocol_params)
			redirect_to @protocol
		else
			render 'edit'
		end
	end

	def destroy
		@protocol = Protocol.find(params[:id])
		@protocol.destroy

		redirect_to protocols_path
	end

private
	
	def protocol_params
		params.require(:protocol).permit(:name, :resolution, :weight)
	end

end
