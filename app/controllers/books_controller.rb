class BooksController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @books = Book.all
  end

end
