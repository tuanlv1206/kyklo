class Organization < ApplicationRecord
  # Disable single inheritance table because the column of organization table is type
  self.inheritance_column = :_type_disabled

  # Type can be "Show room", "Service", "Dealer"
  TYPES = ["Show room", "Service", "Dealer"]
  # Pricing policy can be "Flexible", "Fixed", "Prestige"
  PRICING_POLICIES = ["Flexible", "Fixed", "Prestige"]

  # Validations
  validates_inclusion_of :type, in: TYPES
  validates_inclusion_of :pricing_policy, in: PRICING_POLICIES

  # Associations
  has_many :models
end
