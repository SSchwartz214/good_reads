class User < ApplicationRecord
  has_many :books, through: :user_books
end
