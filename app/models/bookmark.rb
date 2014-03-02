class Bookmark < ActiveRecord::Base
	validates :url, length: { minimum: 4 }
	validates :name, presence: true
	validates :date_saved, presence: true
end
