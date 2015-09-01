class Report < ActiveRecord::Base
	belongs_to :project

	has_many :write 
	has_many :person, :through => :write 
end
