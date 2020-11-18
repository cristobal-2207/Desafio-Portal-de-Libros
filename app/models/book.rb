class Book < ApplicationRecord
  belongs_to :user
  enum status: [:available, :reserved, :buyed, :requested]
end
