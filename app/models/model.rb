class Model < ApplicationRecord
  # Validations
  # model_slug shoud be unique
  validates_uniqueness_of :model_slug

  # Associations
  has_many :model_types
  belongs_to :organization
end
