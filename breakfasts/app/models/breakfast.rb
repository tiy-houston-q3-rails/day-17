class Breakfast < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 15 }
  validates :image_url, presence: {message: "YOU suck" }
end
