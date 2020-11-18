class UsersController < ApplicationController
  before_action :set_book, only: :release
  
  def profile
    @books=Book.where(status: :reserved)
  end

  def release
    @book.update_attributes(status: :available)
    redirect_to profile_users_path
  end

  def set_book
    @book=Book.find(params[:book_id])
  end

end
