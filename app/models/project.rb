class Project < ActiveRecord::Base
  validates :title, :description, :website, :github , presence: true
end
