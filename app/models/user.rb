class User < ActiveRecord::Base
  has_many :comments
  validates :user_name, presence: true, uniqueness: true, length: { minimum: 5}
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
