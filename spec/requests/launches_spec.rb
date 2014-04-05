require 'spec_helper'

describe "Launches" do
  describe "GET /launches" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get launches_path
      response.status.should be(200)
    end
  end
end
