class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }
  
  validates :username, length: {minimum: 3, maximum: 25}

  validates :email, length: {maximum: 105}, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
