class User < ActiveRecord::Base
	has_many :microposts
	before_save {self.emai = emai.downcase}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, presence: true, length: {maximum: 50}
	validates :emai, presence: true, length: {maximum: 255} , format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
end
