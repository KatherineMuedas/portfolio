class Project < ActiveRecord::Base
  has_many :pictures
  validates :title, :description, :website, :github , presence: true
end
