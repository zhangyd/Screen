class Work < ActiveRecord::Base
	belongs_to :project
	belongs_to :person

	validates :project, :person, :presence => true 
end