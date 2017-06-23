class MobilesController < ApplicationController

	def new
		@mobile = Mobile.new
	end

	def create
		@mobile = Mobile.new(mobile_params)
		if @mobile.save
			redirect_to mobiles_path
			flash[:notice] = t('.mobile_created_successfully')
		else
			render 'new'
			flash[:alert] = t('.mobile_not_created_sucessfully')
		end
	end

	def show
		@mobile = Mobile.find(params[:id])
		@cart_action = @mobile.cart_action(current_user.id)
	end

	def index
		@mobiles = Mobile.all
	end

	private

	def mobile_params
		params.require(:mobile).permit(
			:id,
			:mobile_list
		)
	end

end
