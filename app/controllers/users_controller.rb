class UsersController < ApplicationController
  before_action :set_book, only: :release
  
  def profile
    @books=current_user.books.reserved
  end

  def availables
    @books=Book.available
  end

  def release
    @book.update_attributes(status: params[:status], user: current_user)
    redirect_to profile_users_path
  end

  def buyed_books
    @books=current_user.books.reserved.pluck(:title, :id)
  end

  def buy_book
    @book.update_attributes(status: params[:status], user: current_user)
    redirect_to root_path
  end
  def set_book
    @book=Book.find(params[:book_id])
  end

end