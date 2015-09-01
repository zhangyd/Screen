class Project < ActiveRecord::Base
	has_many :report
	has_many :publication

	has_many :work
	has_many :person, :through => :work
end
