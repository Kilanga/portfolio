class Project < ApplicationRecord
  has_one_attached :image
  validates :title, :description, presence: true

  has_and_belongs_to_many :technologies
end
