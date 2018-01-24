class Member < ApplicationRecord
	has_many :goals
	# before_save { self.mailaddress = mailaddress.downcase }
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	VALID_MAILADDRESS_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :mailaddress, presence: true, uniqueness: { case_sensitive: false },
		format: { with:VALID_MAILADDRESS_REGEX }
	has_many :comments
	has_secure_password
end
