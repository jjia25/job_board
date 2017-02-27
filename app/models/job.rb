class Job < ApplicationRecord
  validates :title, :description, presence: true
  validates :salary, numericality: true
end
