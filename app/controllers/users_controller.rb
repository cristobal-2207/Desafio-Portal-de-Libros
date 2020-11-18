class UsersController < ApplicationController
  def profile
    @books=Book.where(status: :reserved)
  end
end
