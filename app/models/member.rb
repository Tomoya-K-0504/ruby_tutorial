class Member < ApplicationRecord
	validates :name, presence: true, length: { minimum: 2, maximum: 20}
end
