class BooksController < ApplicationController

	def new
    @book = Book.new
	end
	
	def create
		@book = Books.create(book_params)
		if @book.save
			@book.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def index
	end

	def update
	end

	def edit
	end

	def destroy
	end

	private

	def book_params
      params.require(:book).permit(:name, :author, :pages)
    end


end
