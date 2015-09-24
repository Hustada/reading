class Book < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 5 }
	validates :author, presence: true, length: { minimum: 5 }
	validates :pages, presence: true
	belongs_to :list
end
