class ListsController < ApplicationController

	def new
    @list = List.new
	end
	
	def create
		@list = List.new(list_params)
		if @list.save
			flash[:notice] = "List created!"
			redirect_to list_path(@list)
		else
			flash[:error] = "The list could not be created"
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
		@book = @list.books.new
	end

	private

	def list_params
      params.require(:list).permit(:name)
   end
end