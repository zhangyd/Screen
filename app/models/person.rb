class Person < ActiveRecord::Base
	has_many :works
	has_many :projects, :through => :works

	has_many :writes
	has_many :publications, :through => :writes

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
