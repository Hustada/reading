class ListsController < ApplicationController

	def new
    @list = List.new
	end
	
	def create
		@list = List.create(list_params)
		if @list.save
			@list.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def index
		@lists = List.all.order('created_at DESC')
	end

	def update
	end

	def edit
	end

	def destroy
	end

	def show
		@list = List.find(params[:id])
	end

	private

	def list_params
      params.require(:list).permit(:name)
    end
end