class Api::BooksController < ApplicationController

  def index
    @library = Library.find_by(id: params[:library_id])
    if @library
      @books = @library.books.includes(:checked_out_by)
    else
      render json: { error: "Library not found" }, status: :not_found
    end
  end

end