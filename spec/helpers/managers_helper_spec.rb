require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ManagersHelper. For example:
#
# describe ManagersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ManagersHelper, type: :helper do
  describe "lionmail verification" do
    it "valid email" do
      expect(ManagersHelper.lionmail?("sy3006@columbia.edu")).to be true
    end

    it "invalid email" do
      expect(ManagersHelper.lionmail?("alanyevs@gmail.com")).to be false
    end
  end
end
