class Publication < ActiveRecord::Base
	belongs_to :project

	has_many :writes
	has_many :publications, :through => :writes

	validates :project_id, :title, :link, :presence => true
end
