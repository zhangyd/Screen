class Project < ActiveRecord::Base
	has_many :reports
	has_many :publications

	has_many :works
	has_many :people, :through => :works

end
