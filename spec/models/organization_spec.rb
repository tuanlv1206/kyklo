require 'rails_helper'

describe Organization, type: :model do
  describe "Associations" do
    it { should have_many(:models) }
  end

  describe "Validations" do
    it do
      should validate_inclusion_of(:type).
      in_array(["Show room", "Service", "Dealer"])
    end

    it do
      should validate_inclusion_of(:pricing_policy).
      in_array(["Flexible", "Fixed", "Prestige"])
    end
  end
end
