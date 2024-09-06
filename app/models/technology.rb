class Technology < ApplicationRecord
  has_one_attached :logo
  has_and_belongs_to_many :projects

  validates :name, :logo, presence: true
end
