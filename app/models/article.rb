class Article < ActiveRecord::Base
	belongs_to :category

	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
end
