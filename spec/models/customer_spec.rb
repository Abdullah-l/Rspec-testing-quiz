require 'rails_helper'

RSpec.describe Customer, type: :model do
  context "Validate customer input" do
    it "should pass when valid data is sent" do
      c1 = Customer.new(first_name: "", last_name: "A", balance: 3.7)
      expect(c1.valid?).to be true
    end
  end
end