require 'rails_helper'

RSpec.describe Meal, type: :model do
  describe "validations" do
    context "valid" do
      it "with a name" do
        meal = Meal.new(name: "Breakfast")
        expect(meal).to be_valid
      end
    end

    context "invalid" do
      it "without a name" do
        meal = Meal.new
        expect(meal).to be_invalid
      end
    end
  end
end
