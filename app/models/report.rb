class Report < ActiveRecord::Base
	belongs_to :project

	has_many :writes 
	has_many :people, :through => :writes
end
