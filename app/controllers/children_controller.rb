class ChildrenController < ApplicationController
	def index
		@children = Child.order(:name)
		respond_to do |format|
			format.html
			format.csv { send_data @children.to_csv }
		end
	end
	
	def show 
		@child = Child.find(params[:id])
	end

	def import
		Child.import(params[:file])
		redirect_to root_url, notice: "Child imported."
	end
end
