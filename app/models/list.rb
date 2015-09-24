class List < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 5 }
	has_many :books, dependent: :destroy
	accepts_nested_attributes_for :books
end
