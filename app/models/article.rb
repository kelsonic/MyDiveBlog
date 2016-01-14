class Article < ActiveRecord::Base
  
  validates :title, presence: true, length: { minimum: 2, maximum: 50 }
  validates :country, presence: true, length: { minimum: 2, maximum: 100 }
  validates :divesite, length: { minimum: 2, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10 }
  
end