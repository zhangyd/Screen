class Project < ActiveRecord::Base
	has_many :reports
	has_many :publications

	has_many :works
	has_many :people, :through => :works

	has_many :comments

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
