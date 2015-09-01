class Write < ActiveRecord::Base
	belongs_to :person
	belongs_to :publication

	validates :person, :publication, :presence => true
end