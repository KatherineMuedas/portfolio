class Picture < ActiveRecord::Base
  belongs_to :project
  
  has_attached_file :photo, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  
  validates :title, presence: true
end
