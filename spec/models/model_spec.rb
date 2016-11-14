require 'rails_helper'

describe Model, type: :model do
  describe "Associations" do
    it { should belong_to(:organization) }
    it { should have_many(:model_types) }
  end

  describe "Validations" do
    it { should validate_uniqueness_of(:model_slug) }
  end
end
