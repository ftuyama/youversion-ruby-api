require_relative './spec_helper'

RSpec.describe YouVersion::Client, :vcr do
  describe :api do
    describe :test do
      it "with valid token" do
        expect(
          valid_client.bible({"id" => 211})
        ).to valid_response
      end
    end
  end
end
