require 'rails_helper'

describe ModelType, type: :model do
  describe "Associations" do
    it { should belong_to(:model) }
  end

  describe "Validations" do
    it { should validate_uniqueness_of(:model_type_slug) }
  end
end
