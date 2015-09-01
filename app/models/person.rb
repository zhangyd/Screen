class Person < ActiveRecord::Base
	has_many :work
	has_many :project, :through => :work

	has_many :write
	has_many :publication, :through => :write 
end
