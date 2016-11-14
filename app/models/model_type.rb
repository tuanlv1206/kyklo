class ModelType < ApplicationRecord
  # Validations
  validates_uniqueness_of :model_type_slug

  # Associations
  belongs_to :model

  # Include TotalPrice module from lib directory
  include TotalPrice

  # Calculate total price
  def total_price(base_price = nil)
    base_price = base_price || self.base_price
    policy = self.model.organization.pricing_policy
    TotalPrice.calculation policy, base_price
  end

  # Customize as_json function
  def as_json(options = {})
    json_to_return = super
    if options.has_key? :base_price
      tota_price = self.total_price(options[:base_price])
      json_to_return[:total_price] = tota_price
    end

    return json_to_return
  end
end
