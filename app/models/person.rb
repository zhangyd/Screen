class Person < ActiveRecord::Base
	has_many :works
	has_many :projects, :through => :works

	has_many :writes
	has_many :publications, :through => :writes
end
